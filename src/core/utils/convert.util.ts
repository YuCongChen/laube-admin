import { plainToInstance } from 'class-transformer';
import { validate } from 'class-validator';
import { ConvertException } from '@core/exception/convert.exception';

export const convertToInstance = async <T>(
  cls: any,
  obj: any,
): Promise<T | T[]> => {
  const instance = plainToInstance<T, any>(cls, obj);

  const errors = await validate(instance as object);

  if (errors.length > 0) {
    errors.map((error) => {
      const errorConstraints = error.constraints;

      if (errorConstraints) {
        const errorMessage = Object.values(errorConstraints)[0];

        throw new ConvertException(errorMessage);
      }
    });
  }

  return instance;
};
