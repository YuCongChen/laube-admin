export interface ExcelColumnOptions {
  name: string; // Excel 中的列名
  order?: number; // 列顺序
  width?: number; // 列宽
  type?: string; // 数据类型
  format?: string; // 格式化
  validator?: Function; // 验证函数
  transform?: Function; // 转换函数
}

// Excel 列装饰器
export function ExcelColumn(options: ExcelColumnOptions) {
  return function (target: any, propertyKey: string) {
    const columns =
      Reflect.getMetadata('excel:columns', target.constructor) || [];
    columns.push({
      property: propertyKey,
      ...options,
    });
    Reflect.defineMetadata('excel:columns', columns, target.constructor);
  };
}

// Excel 表格装饰器
export function ExcelSheet(name: string) {
  return function (target: any) {
    Reflect.defineMetadata('excel:sheet', name, target);
  };
}
