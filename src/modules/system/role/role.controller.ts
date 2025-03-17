import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  Query,
} from '@nestjs/common';
import { RoleService } from './role.service';
import { CreateRoleDto } from './dto/create-role.dto';
import { UpdateRoleDto } from './dto/update-role.dto';
import { RolePageQueryDto } from './dto/page-query.dto';
import { Create, Permission, Result, Update } from '@core/decorators';
import { PageResponseDto } from '@core/dto';
import { RoleInfoDto } from './dto/role-info.dto';

@Controller('system/role')
@Permission('system:role')
export class RoleController {
  constructor(private readonly roleService: RoleService) {}

  @Get('page')
  @Result(PageResponseDto)
  @Permission('page')
  getRolePage(@Query() dto: RolePageQueryDto) {
    return this.roleService.getRolePage(dto);
  }

  @Get('list')
  @Result()
  getRoleList() {
    return this.roleService.getRoleList();
  }

  @Get('info/:id')
  @Result(RoleInfoDto)
  getRoleInfo(@Param('id') id: string) {
    return this.roleService.getRoleInfo(id);
  }

  @Post('create')
  @Result()
  @Create()
  createRole(@Body() dto: CreateRoleDto) {
    return this.roleService.createRole(dto);
  }

  @Post('update/:id')
  @Result()
  @Update()
  updateRole(@Param('id') id: string, @Body() dto: UpdateRoleDto) {
    return this.roleService.updateRole(id, dto);
  }

  @Delete('delete/:id')
  @Result()
  @Delete()
  deleteRole(@Param('id') id: string) {
    return this.roleService.deleteRole(id);
  }
}
