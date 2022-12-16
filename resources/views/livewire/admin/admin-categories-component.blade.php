<div>
    <style>
        nav svg{
            height: 20px;
        }

        nav .hidden{
            display: block;
        }
    </style>
    <main class="main">
        <div class="page-header breadcrumb-wrap">
            <div class="container">
                <div class="breadcrumb">
                    <a href="/" rel="nofollow">Home</a>
                    <span></span> All Categories
                </div>
            </div>
        </div>
        <section class="mt-50 mb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                All Categories
                            </div>
                            <div class="card-body">
                                <table class="table table-striped ">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Name</th>
                                            <th>Slug</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $i = ($categories->currentpage()-1) * $categories->perpage() + 1;
                                        @endphp
                                        @foreach ($categories as $category)
                                            <tr>
                                                <td>{{ $i }}</td>
                                                <td>{{ $category->name }}</td>
                                                <td><a href="{{ route('product.category', ['slug' => $category->slug]) }}">{{ $category->slug }}</a></td>
                                                <td></td>
                                            </tr>
                                            @php $i++ @endphp
                                        @endforeach
                                    </tbody>
                                </table>
                                {{ $categories->links() }}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</div>
