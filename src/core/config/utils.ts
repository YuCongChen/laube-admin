import { readFileSync } from 'fs';
import * as yaml from 'js-yaml';
import * as _ from 'lodash';

export const loadYamlConfig = () => {
  const envFilePath = [
    `.env.${process.env.NODE_ENV || 'development'}.yaml`,
    '.env.yaml',
  ];

  try {
    const envConfig = loadYamlFile(envFilePath[0]);
    const defaultConfig = loadYamlFile(envFilePath[1]);

    return _.merge(defaultConfig, envConfig);
  } catch (e) {
    console.error('读取配置文件失败:', e);
    return {};
  }
};

const loadYamlFile = (filePath: string) => {
  try {
    const fileContents = readFileSync(filePath, 'utf8');
    return yaml.load(fileContents) || {};
  } catch (e) {
    console.error(`读取配置文件 ${filePath} 失败:`, e);
    return {};
  }
};
