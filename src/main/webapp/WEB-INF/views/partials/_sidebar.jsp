<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <a href="#" class="nav-link">
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/">
        <span class="menu-title">홈 화면</span>
        <i class="mdi mdi-home menu-icon"></i>
      </a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#second_item" aria-expanded="false" aria-controls="second_item">
        <span class="menu-title">생산관리</span>
        <i class="mdi mdi-factory menu-icon">
        </i>
      </a>
      <div class="collapse" id="second_item">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../pm">생산기계 등록</a></li>
          <li class="nav-item"> <a class="nav-link" href="../pr">생산 요청서</a></li>
          <li class="nav-item"> <a class="nav-link" href="../production/requestList">생산 관리</a></li>
        </ul>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#third_item" aria-expanded="false" aria-controls="third_item">
        <span class="menu-title">재고관리</span>
        <i class="mdi menu-icon">
        <svg width="15" height="15" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		<g id="fa-solid:warehouse">
		<path id="Vector" d="M19.4 16.5H5.615C5.45 16.5 5.315 16.6688 5.315 16.875L5.31125 19.125C5.31125 19.3313 5.44625 19.5 5.61125 19.5H19.4C19.565 19.5 19.7 19.3313 19.7 19.125V16.875C19.7 16.6688 19.565 16.5 19.4 16.5ZM19.4 21H5.60375C5.43875 21 5.30375 21.1688 5.30375 21.375L5.3 23.625C5.3 23.8313 5.435 24 5.6 24H19.4C19.565 24 19.7 23.8313 19.7 23.625V21.375C19.7 21.1688 19.565 21 19.4 21ZM19.4 12H5.6225C5.4575 12 5.3225 12.1688 5.3225 12.375L5.31875 14.625C5.31875 14.8313 5.45375 15 5.61875 15H19.4C19.565 15 19.7 14.8313 19.7 14.625V12.375C19.7 12.1688 19.565 12 19.4 12ZM23.3938 5.48438L13.19 0.173444C12.9707 0.0597149 12.7356 0.00117493 12.4981 0.00117493C12.2607 0.00117493 12.0256 0.0597149 11.8063 0.173444L1.60625 5.48438C0.93875 5.83594 0.5 6.65157 0.5 7.56094V23.625C0.5 23.8313 0.635 24 0.8 24H3.8C3.965 24 4.1 23.8313 4.1 23.625V12C4.1 11.175 4.6475 10.5 5.3225 10.5H19.6775C20.3525 10.5 20.9 11.175 20.9 12V23.625C20.9 23.8313 21.035 24 21.2 24H24.2C24.365 24 24.5 23.8313 24.5 23.625V7.56094C24.5 6.65157 24.0613 5.83594 23.3938 5.48438Z" fill="#CCCCCC"/>
		</g>
		</svg>
        </i>
      </a>
      <div class="collapse" id="third_item">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../storage/storage"> 창고 관리 </a></li>
          <li class="nav-item"> <a class="nav-link" href="../wh"> 재고자산 수불부 현황 조회 </a></li>
          <li class="nav-item"> <a class="nav-link" href="../wh/detail"> 재고 현황 조회 </a></li>
        </ul>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link"data-bs-toggle="collapse" href="#chart-basic" aria-expanded="false" aria-controls="chart-basic">
        <span class="menu-title">품목관리</span>
        <i class="mdi mdi-chart-bar menu-icon"></i>
        
      </a>
      <div class="collapse" id="chart-basic">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../raw_material">원부자재 관리</a></li>
          <li class="nav-item"> <a class="nav-link" href="../product"> 생산품 관리 </a></li>
          <li class="nav-item"> <a class="nav-link" href="../process"> 생산품 프로세스 관리 </a></li>
        </ul>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link"data-bs-toggle="collapse" href="#fifth-item" aria-expanded="false" aria-controls="fifth-item">
        <span class="menu-title">발주관리</span>
        <i class="mdi mdi-chart-bar menu-icon"></i>
        
      </a>
      <div class="collapse" id="fifth-item">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../order">발주신청서 작성</a></li>
          <li class="nav-item"> <a class="nav-link" href="../orderlist">발주현황</a></li>
        </ul>
      </div>
    </li>
  </ul>
</nav>