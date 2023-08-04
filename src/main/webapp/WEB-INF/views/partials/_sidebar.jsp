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
      <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
        <span class="menu-title">Basic UI Elements</span>
        <i class="menu-arrow"></i>
        
      </a>
      <div class="collapse" id="ui-basic">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
          <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
        </ul>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="pages/forms/basic_elements.html">
        <span class="menu-title">유통기한</span>
        <i class="mdi menu-icon">
        <svg width="15" height="15" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		<g id="gg:chart">
			<g id="Group">
			<path id="Vector" fill-rule="evenodd" clip-rule="evenodd" d="M23.275 8C23.4245 8.65616 23.5 9.32702 23.5 10H14.5V1C16.5394 0.999992 18.5183 1.6926 20.1125 2.96437C21.7068 4.23613 22.8218 6.01163 23.275 8ZM21.208 8C20.8759 6.88601 20.2716 5.87227 19.4497 5.05031C18.6277 4.22835 17.614 3.62406 16.5 3.292V8H21.208Z" fill="#CCCCCC"/>
			<path id="Vector_2" fill-rule="evenodd" clip-rule="evenodd" d="M1.5 14C1.49999 12.6482 1.80452 11.3137 2.39097 10.0957C2.97742 8.87764 3.83072 7.80737 4.8875 6.96435C5.94428 6.12132 7.1774 5.52719 8.49529 5.22607C9.81317 4.92496 11.182 4.92459 12.5 5.225V12H19.275C19.5565 13.2351 19.5741 14.5158 19.3266 15.7581C19.0791 17.0005 18.5721 18.1767 17.8388 19.2096C17.1055 20.2426 16.1624 21.1091 15.0712 21.7526C13.9799 22.396 12.7652 22.8018 11.5063 22.9434C10.2475 23.0851 8.97289 22.9593 7.76596 22.5745C6.55903 22.1897 5.44694 21.5544 4.50242 20.7102C3.55791 19.866 2.80224 18.832 2.28486 17.6756C1.76747 16.5193 1.50002 15.2668 1.5 14ZM17.303 14H10.5V7.196C9.15425 7.1958 7.83867 7.59468 6.71963 8.34219C5.60058 9.0897 4.72834 10.1523 4.21321 11.3955C3.69808 12.6388 3.56319 14.0069 3.82561 15.3268C4.08804 16.6467 4.73598 17.8591 5.68749 18.8108C6.63901 19.7625 7.85136 20.4106 9.17124 20.6732C10.4911 20.9358 11.8592 20.8011 13.1025 20.2862C14.3459 19.7712 15.4086 18.8991 16.1562 17.7802C16.9039 16.6613 17.303 15.3457 17.303 14Z" fill="#CCCCCC"/>
			</g>
		</g>
		</svg>
		        
        </i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="pages/icons/mdi.html">
        <span class="menu-title">재고관리</span>
        <i class="mdi menu-icon">
        <svg width="15" height="15" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
		<g id="fa-solid:warehouse">
		<path id="Vector" d="M19.4 16.5H5.615C5.45 16.5 5.315 16.6688 5.315 16.875L5.31125 19.125C5.31125 19.3313 5.44625 19.5 5.61125 19.5H19.4C19.565 19.5 19.7 19.3313 19.7 19.125V16.875C19.7 16.6688 19.565 16.5 19.4 16.5ZM19.4 21H5.60375C5.43875 21 5.30375 21.1688 5.30375 21.375L5.3 23.625C5.3 23.8313 5.435 24 5.6 24H19.4C19.565 24 19.7 23.8313 19.7 23.625V21.375C19.7 21.1688 19.565 21 19.4 21ZM19.4 12H5.6225C5.4575 12 5.3225 12.1688 5.3225 12.375L5.31875 14.625C5.31875 14.8313 5.45375 15 5.61875 15H19.4C19.565 15 19.7 14.8313 19.7 14.625V12.375C19.7 12.1688 19.565 12 19.4 12ZM23.3938 5.48438L13.19 0.173444C12.9707 0.0597149 12.7356 0.00117493 12.4981 0.00117493C12.2607 0.00117493 12.0256 0.0597149 11.8063 0.173444L1.60625 5.48438C0.93875 5.83594 0.5 6.65157 0.5 7.56094V23.625C0.5 23.8313 0.635 24 0.8 24H3.8C3.965 24 4.1 23.8313 4.1 23.625V12C4.1 11.175 4.6475 10.5 5.3225 10.5H19.6775C20.3525 10.5 20.9 11.175 20.9 12V23.625C20.9 23.8313 21.035 24 21.2 24H24.2C24.365 24 24.5 23.8313 24.5 23.625V7.56094C24.5 6.65157 24.0613 5.83594 23.3938 5.48438Z" fill="#CCCCCC"/>
		</g>
		</svg>
        </i>
      </a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="pages/charts/chartjs.html">
        <span class="menu-title">통계관리</span>
        <i class="mdi mdi-chart-bar menu-icon"></i>
      </a>
    </li>
    <li class="nav-item">	
      <a class="nav-link" href="pages/tables/basic-table.html">
        <span class="menu-title">Tables</span>
        <i class="mdi mdi-table-large menu-icon"></i>
      </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
        <span class="menu-title">Sample Pages</span>
        <i class="menu-arrow"></i>
        <i class="mdi mdi-medical-bag menu-icon"></i>
      </a>
      <div class="collapse" id="general-pages">
        <ul class="nav flex-column sub-menu">
          <li class="nav-item"> <a class="nav-link" href="../pages/samples/blank-page.html"> Blank Page </a></li>
          <li class="nav-item"> <a class="nav-link" href="../pages/samples/login.html"> Login </a></li>
          <li class="nav-item"> <a class="nav-link" href="../pages/samples/register.html"> Register </a></li>
          <li class="nav-item"> <a class="nav-link" href="../pages/samples/error-404.html"> 404 </a></li>
          <li class="nav-item"> <a class="nav-link" href="../pages/samples/error-500.html"> 500 </a></li>
        </ul>
      </div>
    </li>
    <li class="nav-item sidebar-actions">
      <span class="nav-link">
        <div class="border-bottom">
          <h6 class="font-weight-normal mb-3">Projects</h6>
        </div>
        <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
        <div class="mt-4">
          <div class="border-bottom">
            <p class="text-secondary">Categories</p>
          </div>
          <ul class="gradient-bullet-list mt-4">
            <li>Free</li>
            <li>Pro</li>
          </ul>
        </div>
      </span>
    </li>
  </ul>
</nav>