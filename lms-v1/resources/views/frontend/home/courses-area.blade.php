@php
    $courses = App\Models\Course::where('status',1)->orderBy('id','ASC')->limit(6)->get();
    $categories = App\Models\Category::orderBy('category_name','ASC')->get();
@endphp

<section class="course-area pb-120px">
    <div class="container">
        <div class="section-heading text-center">
            <h5 class="ribbon ribbon-lg mb-2">Choose your desired courses</h5>
            <h2 class="section__title">The world's largest selection of courses</h2>
            <span class="section-divider"></span>
        </div><!-- end section-heading -->
        
        <ul class="nav nav-tabs generic-tab justify-content-center pb-4" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="business-tab" data-toggle="tab" href="#business" role="tab" aria-controls="business" aria-selected="true">All</a>
            </li>
            @foreach ($categories as $category) 
           
            <li class="nav-item">
                <a class="nav-link" id="business-tab" data-toggle="tab" href="#business{{ $category->id }}" role="tab" aria-controls="business" aria-selected="false">{{ $category->category_name }}</a>
            </li>
            @endforeach
             
        </ul>
    </div><!-- end container -->


    <div class="card-content-wrapper bg-gray pt-50px pb-120px">
        <div class="container">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="business" role="tabpanel" aria-labelledby="business-tab">
                    <div class="row">
                        
      @foreach ($courses as $course) 
                     
    <div class="col-lg-4 responsive-column-half">
        <div class="card card-item card-preview" data-tooltip-content="#tooltip_content_1{{ $course->id }}">
            <div class="card-image">
                <a href="{{ url('course/details/'.$course->id.'/'.$course->course_name_slug) }}" class="d-block">
                    <img class="card-img-top lazy" src="{{ asset($course->course_image) }}" data-src="images/img8.jpg" alt="Card image cap">
                </a>

                   
    @php
        $amount = $course->selling_price - $course->discount_price;
        $discount = ($amount/$course->selling_price) * 100;
    @endphp

                <div class="course-badge-labels">

                    @if ($course->bestseller == 1)
                    <div class="course-badge">Bestseller</div>
                    @else
                    @endif

                    @if ($course->highestrated == 1)
                    <div class="course-badge sky-blue">Highest Rated</div>
                    @else
                    @endif

                    @if ($course->discount_price == NULL)
                    <div class="course-badge blue">New</div>
                    @else
                    <div class="course-badge blue">{{ round($discount) }}%</div>
                    @endif
                   


                </div>
            </div><!-- end card-image -->

            @php
            $reviewcount = App\Models\Review::where('course_id',$course->id)->where('status',1)->latest()->get();
            $avarage = App\Models\Review::where('course_id',$course->id)->where('status',1)->avg('rating');
     
        @endphp   


            <div class="card-body">
                <h6 class="ribbon ribbon-blue-bg fs-14 mb-3">{{ $course->label }}</h6>
                <h5 class="card-title"><a href="{{ url('course/details/'.$course->id.'/'.$course->course_name_slug) }}">{{ $course->course_name }}</a></h5>
          <p class="card-text"><a href="{{ route('instructor.details',$course->instructor_id) }}">{{ $course['user']['name'] }}</a></p>
                <div class="rating-wrap d-flex align-items-center py-2">
                </div><!-- end rating-wrap -->
                <div class="d-flex justify-content-between align-items-center">
                   
                    @if ($course->discount_price == NULL)
                    <p class="card-price text-black font-weight-bold">Rp.{{ $course->selling_price }}  </p>
                    @else
                    <p class="card-price text-black font-weight-bold">Rp.{{ $course->discount_price }} <span class="before-price font-weight-medium">Rp.{{ $course->selling_price }}</span></p> 
                    @endif
                    
                    
                    
            <div class="icon-element icon-element-sm shadow-sm cursor-pointer" title="Add to Wishlist" id="{{ $course->id }}" onclick="addToWishList(this.id)" ><i class="la la-heart-o"></i></div>
                </div>
            </div><!-- end card-body -->
        </div><!-- end card -->
    </div><!-- end col-lg-4 -->
    @endforeach   


                       
                    </div><!-- end row -->
                </div><!-- end tab-pane -->



   @foreach ($categories as $category) 
                <div class="tab-pane fade" id="business{{ $category->id }}" role="tabpanel" aria-labelledby="business-tab">
                    <div class="row">
  @php
      $catwiseCourse = App\Models\Course::where('category_id',$category->id)->where('status',1)->orderBy('id','DESC')->get();
  @endphp                      
          
          @forelse ($catwiseCourse as $course)
        <div class="col-lg-4 responsive-column-half">
            <div class="card card-item card-preview" data-tooltip-content="#tooltip_content_2">
                <div class="card-image">
                    <img class="card-img-top lazy" src="{{ asset($course->course_image) }}" data-src="images/img8.jpg" alt="Card image cap">
                </div><!-- end card-image -->
                <div class="card-body">
         <h6 class="ribbon ribbon-blue-bg fs-14 mb-3">{{ $course->label }}</h6>
           <h5 class="card-title"><a href="course-details.html">{{ $course->course_name }}</a></h5>
          <p class="card-text"><a href=" ">{{ $course['user']['name'] }}</a></p>
                    
                    <div class="d-flex justify-content-between align-items-center">
                       
                    @if ($course->discount_price == NULL)
                    <p class="card-price text-black font-weight-bold">Rp.{{ $course->selling_price }}  </p>
                    @else
                    <p class="card-price text-black font-weight-bold">Rp.{{ $course->discount_price }} <span class="before-price font-weight-medium">Rp.{{ $course->selling_price }}</span></p> 
                    @endif

                        <div class="icon-element icon-element-sm shadow-sm cursor-pointer" title="Add to Wishlist"><i class="la la-heart-o"></i></div>
                    </div>
                </div><!-- end card-body -->
            </div><!-- end card -->
        </div><!-- end col-lg-4 --> 
              
        @empty

        <h5 class="text-danger"> No Course Found </h5>
              
        @endforelse

                         

                    </div><!-- end row -->
                </div><!-- end tab-pane -->
           @endforeach    


            </div><!-- end tab-content -->
            <div class="more-btn-box mt-4 text-center">
                <a href="{{ route('course.grid') }}" class="btn theme-btn">Browse all Courses <i class="la la-arrow-right icon ml-1"></i></a>
            </div><!-- end more-btn-box -->
        </div><!-- end container -->
    </div><!-- end card-content-wrapper -->
</section><!-- end courses-area -->



 