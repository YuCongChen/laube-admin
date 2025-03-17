import {
  IsIn,
  IsNotEmpty,
  IsNumber,
  IsString,
  Length,
  IsArray,
} from '@core/decorators';
import { IsOptional } from 'class-validator';
import { Transform } from 'class-transformer';

export class CreateRoleDto {
  @IsNotEmpty('角色名称')
  @IsString('角色名称')
  name: string;

  @IsOptional()
  @IsString('角色描述')
  @Length(0, 255, '角色描述')
  description?: string;

  @IsOptional()
  @IsNumber('角色状态')
  @IsIn([0, 1], '角色状态')
  status?: number;

  @IsOptional()
  @IsArray('菜单')
  @IsString('菜单', { each: true })
  @Transform(({ value }) => {
    return [...new Set(value)];
  })
  menus?: string[];
}
