<#--
/*******************************************************************************
 * Copyright (c) 2015 Fraunhofer IAO.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * 	Oliver Strauß (Fraunhofer IAO) - initial API and implementation
 *
 * Initially developed in the context of the ARTIST EU project http://www.artist-project.eu
 *******************************************************************************/ 
-->

<#-- @ftlvariable name="" type="eu.artist.reusevol.mp.views.ProjectBrowserView" -->
<#include "_headers.ftl" />
<#include "_footers.ftl" />
<#include "_nav.ftl" />
<#include "_menus.ftl" />
<#include "_apps.ftl" />
<#include "_widgets.ftl" />
<!DOCTYPE html>
<html>
  <@fullHead />
  <body class="skin-artist layout-top-nav layout-boxed">
    <div class="wrapper">

      <!-- Main Header -->
      <header class="main-header">
        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
          <div class="container-fluid">
          
            <div class="navbar-header" style="background-image: url(${ctx}/dist/img/logo/logo.png); background-repeat: no-repeat; background-size: 146px auto;">
              <a href="${homePage}" class="navbar-brand" style="padding-left: 180px;"><b>ARTIST </b>Marketplace</a>
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                <i class="fa fa-bars"></i>
              </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-collapse">

			  <@mainNavBar />

              <ul class="nav navbar-nav navbar-right">
              	<@userAccountMenu />
              </ul>
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
      </header>     

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            ${pageHeading}
            <#if pageDescription??>
            <small>${pageDescription}</small>
            </#if>
          </h1>
          <@breadcrumb links=breadCrumps />
        </section>

        <!-- Main content -->
        <section class="content">
          <#list breadCrumps as b>
          ${b}
          </#list>

          <div class="row">
            <div class="col-xs-12">
              <div class="box box-default box-solid">
                <div class="box-header">
                  <h3 class="box-title">Repository Structure Browser</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <span class="badge bg-green" id="matches"></span>
                      <input type="text" placeholder="Filter ..." style="width: 150px;" class="form-control input-sm pull-right" name="search">
                      <!-- 
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default" id="btnResetSearch"><i class="fa fa-undo"></i></button>
                      </div>
                      -->
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-borderedr" id="columnview">
                    <colgroup>
                      <col width="300px"></col>
                      <col width="300px"></col>
                      <col width="300px"></col>
                    </colgroup>
                    <thead>
                      <tr> <th>Project</th> <th>Package</th> <th>Artefact</th> </tr>
                    </thead>
                    <tbody>
                    <tr> <td></td> <td></td> <td></td> </tr>
                    <!--
                    <tr> <td id="tags" colspan="3">Selected nodes: </td> </tr>
                    <tr> <td id="preview" colspan="3">preview</td> </tr>
                     -->
                    </tbody>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>          

          <div class="row">
            <div class="col-md-8">
              <@artefactDetails />            
            </div>

            <div class="col-md-4">
              <@artefactInfo />            
            </div>

          </div><!-- row -->
          
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

      <@mainFooter />

    </div><!-- ./wrapper -->

    <@fullScriptFooter />
    
	<script type="text/javascript">    
      <@projectBrowserApp />
    </script>
  </body>
</html>