@extends('laundry.customer.layouts.app')
@section('title', 'Laundry')
@section('active-data-transaction', 'active')

@section('content')
<style>
#qrisModal {
  display: flex !important;
}
</style>
<div class="row">
    <div class="col-12 mb-4 mb-sm-5">
        <div class="d-flex justify-content-between align-items-center">
            <span class="fw-medium h4 mb-0">RIWAYAT TRANSAKSI'S</span>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-12 mb-4 mb-sm-5">
        <div class="d-flex justify-content-between align-items-center">
            <span class="fw-medium h4 mb-0">TRANSAKSI'S</span>
            <button type="button" class="btn btn-dark w-100px rounded-0" data-bs-toggle="modal" data-bs-target="#transactionModal">TAMBAH</button>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-12">
        <div class="card border rounded-0 h-100">
            <div class="card-body">
                <form method="GET" action="{{ route('customer.transaction') }}" class="d-flex justify-content-between align-items-center mb-3">
                    <div class="col-6 col-xl-3">
                        <div class="form-border-bottom form-control-transparent">
                            <div class="form-fs-md">
                                <div class="rounded position-relative">
                                    <input type="text" name="date" id="date" class="form-control pe-5 bg-secondary bg-opacity-10">
                                    <button type="submit" class="btn btn-link bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y text-dark-hover">
                                        <i class="fa-sharp fa-solid fa-magnifying-glass fs-6"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="table-responsive">
                    <table class="table table-shrink table-borderless align-middle mb-0">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col" class="border-0"></th>
                                <th scope="col" class="border-0">FAKTUR</th>
                                <th scope="col" class="border-0">PELANGGAN</th>
                                <th scope="col" class="border-0">PAKET</th>
                                <th scope="col" class="border-0">HARI/TANGGAL</th>
                                <th scope="col" class="border-0">STATUS</th>
                                <th scope="col" class="border-0">AKSI</th>
                            </tr>
                        </thead>
                        <tbody class="border-top-0">
                            @if (count($transaction) > 0)
                            @foreach ($transaction as $row)
                            <tr>
                                <td> </td>
                                <td> <span class="fw-normal h6">{{ $row->invoice }}</span> </td>
                                <td>
                                    <div class="d-grid justify-content-start">
                                        <span class="fw-normal small h6">Nama: {{ ucwords($row->customer_name) }}</span>
                                        <span class="fw-normal small h6">Telepon: {{ chunk_split($row->customer_phone, 4) }}</span>
                                    </div>
                                </td>
                                <td> <span class="fw-normal small h6">{{ ucwords($row->package) }}</span> </td>
                                <td> <span class="fw-normal small h6">{{ \Carbon\Carbon::parse($row->date)->translatedFormat('l, d F Y') }}</span> </td>
                                <td> {!! $row->status_label !!} </td>
                                <td>
                                    <div class="ms-4">
                                        <a href="#" class="text-dark" role="button" id="actionDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="fa-sharp fa-solid fa-ellipsis-vertical"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end min-w-auto border rounded-0" aria-labelledby="actionDropdown">
                                            <li>
                                                <a href="#" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#detailModal-{{ $row->invoice }}">
                                                    <i class="fa-sharp fa-regular fa-circle-info me-2"></i>Rincian
                                                </a>
                                            </li>
                                            <li>
                                                <a href="{{ route('customer.transactionReceipt', $row->invoice) }}" class="dropdown-item" target="_blank">
                                                    <i class="fa-sharp fa-regular fa-receipt me-2"></i>Struk
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="modal fade" id="detailModal-{{ $row->invoice }}" tabindex="-1" aria-labelledby="detailModallabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-md">
                                            <div class="modal-content border rounded-0">
                                                <div class="modal-header border-0">
                                                    <span class="fw-normal text-center h5 mb-0">RINCIAN TRANSAKSI</span>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row px-xxl-2 mb-3">
                                                        <div class="col-md-6">
                                                            <ul class="list-group list-group-borderless">
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Faktur:</span>
                                                                    <span class="fw-normal mb-0">{{ $row->invoice }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Nama Pelanggan:</span>
                                                                    <span class="fw-normal mb-0">{{ ucwords($row->customer_name) }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Telepon Pelanggan:</span>
                                                                    <span class="fw-normal mb-0">{{ chunk_split($row['customer_phone'], 4); }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Tanggal Transaksi:</span>
                                                                    <span class="fw-normal mb-0">{{ \Carbon\Carbon::parse($row->date)->translatedFormat('l, d F Y') }}</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <ul class="list-group list-group-borderless">
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Paket:</span>
                                                                    <span class="fw-normal mb-0">{{ ucwords($row->package) }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Berat:</span>
                                                                    <span class="fw-normal mb-0">{{ $row->weight }} kg</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Total:</span>
                                                                    <span class="fw-normal mb-0">Rp. {{ number_format($row->price) }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Jumlah Yang Dibayar:</span>
                                                                    <span class="fw-normal mb-0">Rp. {{ number_format($row->detail->amount) }}</span>
                                                                </li>
                                                                <li class="list-group-item d-grid mb-3">
                                                                    <span class="fw-normal h6 mb-0">Status:</span>
                                                                    <span class="fw-normal mb-0">{!! $row->amount_non_label !!}</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-center align-items-center px-xxl-2">
                                                        <button type="button" class="btn btn-secondary w-100 rounded-0" data-bs-dismiss="modal" aria-label="Close">TUTUP</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                            @else
                            <tr>
                                <td class="text-center" colspan="10">
                                    <div class="col-12">
                                        <div class="text-center mt-4">
                                            <h6 class="fw-lighter text-secondary small mb-2">Anda tidak memiliki data dalam tabel ini</h6>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('css')
<link rel="stylesheet" href="{{ asset('assets/vendor/choices/css/choices.min.css') }}" type="text/css">
<link rel="stylesheet" href="{{ asset('assets/vendor/flatpickr/css/flatpickr.min.css') }}" type="text/css">
@endsection

@section('js')
<script src="{{ asset('assets/vendor/choices/js/choices.min.js') }}"></script>
<script src="{{ asset('assets/vendor/flatpickr/js/flatpickr.min.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection

@section('script')
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var packageSelectTransaction = document.getElementById('package_id_transaction');
        var priceInputTransaction = document.getElementById('price_transaction');
        var couponSelectTransaction = document.getElementById('coupon_id_transaction');
        var weightInputTransaction = document.getElementById('weight_transaction');
        var amountInputTransaction = document.getElementById('amount_transaction');
        var couponSelect = $('#coupon_id_transaction');
        var customerId = '{{ Auth::user()->id }}';
        console.log('id ku', customerId)

        weightInputTransaction.addEventListener('input', function(e) {
            weightInputTransaction.value = weightInputTransaction.value.replace(/[^0-9.]/g, '');

            if ((weightInputTransaction.value.match(/\./g) || []).length > 1) {
                weightInputTransaction.value = weightInputTransaction.value.replace(/\.+$/, "");
            }
        });

        amountInputTransaction.addEventListener('input', function(e) {
            amountInputTransaction.value = amountInputTransaction.value.replace(/[^0-9]/g, '');
            if (amountInputTransaction.value.length > 7) {
                amountInputTransaction.value = amountInputTransaction.value.slice(0, 7);
            }
        });

        var packageSelectCustomer = document.getElementById('package_id_customer');
        var priceInputCustomer = document.getElementById('price_customer');
        var weightInputCustomer = document.getElementById('weight_customer');
        var amountInputCustomer = document.getElementById('amount_customer');
        var phoneInputCustomer = document.getElementById('phone_customer');

        weightInputCustomer.addEventListener('input', function(e) {
            weightInputCustomer.value = weightInputCustomer.value.replace(/[^0-9.]/g, '');

            if ((weightInputCustomer.value.match(/\./g) || []).length > 1) {
                weightInputCustomer.value = weightInputCustomer.value.replace(/\.+$/, "");
            }
        });

        amountInputCustomer.addEventListener('input', function(e) {
            amountInputCustomer.value = amountInputCustomer.value.replace(/[^0-9]/g, '');
            if (amountInputCustomer.value.length > 7) {
                amountInputCustomer.value = amountInputCustomer.value.slice(0, 7);
            }
        });

        phoneInputCustomer.addEventListener('input', function(e) {
            phoneInputCustomer.value = phoneInputCustomer.value.replace(/[^0-9]/g, '');
            if (phoneInputCustomer.value.length > 15) {
                phoneInputCustomer.value = phoneInputCustomer.value.slice(0, 7);
            }
        });

        function updatePriceTransaction() {
            var selectedPackage = packageSelectTransaction.options[packageSelectTransaction.selectedIndex];
            var packagePrice = parseFloat(selectedPackage.getAttribute('data-price')) || 0;
            var weightValue = parseFloat(weightInputTransaction.value) || 0;
            var couponValue = parseFloat(couponSelectTransaction.options[couponSelectTransaction.selectedIndex]?.getAttribute('data-coupon-value')) || 0;

            if (couponValue > 0) {
                weightValue = Math.max(weightValue - couponValue, 0);
            }

            var totalPrice = packagePrice * weightValue;
            priceInputTransaction.value = totalPrice.toFixed(0);
        }

        function updatePriceCustomer() {
            var selectedPackage = packageSelectCustomer.options[packageSelectCustomer.selectedIndex];
            var packagePrice = parseFloat(selectedPackage.getAttribute('data-price')) || 0;
            var weightValue = parseFloat(weightInputCustomer.value) || 0;

            var totalPrice = packagePrice * weightValue;
            priceInputCustomer.value = totalPrice.toFixed(0);
        }

        flatpickr('#date_transaction', {
            dateFormat: 'd F Y',
            defaultDate: 'today',
            minDate: 'today'
        });

        flatpickr('#date_customer', {
            dateFormat: 'd F Y',
            defaultDate: 'today',
            minDate: 'today'
        });

        packageSelectTransaction.addEventListener('change', updatePriceTransaction);
        couponSelectTransaction.addEventListener('change', updatePriceTransaction);
        weightInputTransaction.addEventListener('input', updatePriceTransaction);
        updatePriceTransaction();

        packageSelectCustomer.addEventListener('change', updatePriceCustomer);
        weightInputCustomer.addEventListener('input', updatePriceCustomer);
        updatePriceCustomer();
    });
</script>

<script>
    $(document).ready(function() {
        var customerId = '{{ Auth::user()->id }}';
        var couponSelect = $('#coupon_id_transaction');
        console.log('id kuu', customerId)

        if (customerId) {
            $.ajax({
                url: '{{ url(' / customer / transaction ') }}/' + customerId,
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    couponSelect.empty();
                    couponSelect.append('<option value="">Silakan pilih salah satu</option>');
                    $.each(data, function(index, coupon) {
                        couponSelect.append('<option value="' + coupon.id + '" data-coupon-value="1">' + coupon.amount + ' Kupon</option>');
                    });
                },
                error: function(xhr) {
                    console.log(xhr.responseText);
                }
            });
        } else {
            couponSelect.empty();
            couponSelect.append('<option value="">Silakan pilih salah satu</option>');
        }
    });
</script>
<script>
    // Event listener khusus ketika modal #transactionModal selesai ditampilkan
    $('#transactionModal').on('shown.bs.modal', function () {
        const showQrisBtn = document.getElementById('showQrisBtn');
        const qrisModal = document.getElementById('qrisModal');
        const closeQrisBtn = document.getElementById('closeQrisBtn');

        if (showQrisBtn && qrisModal && closeQrisBtn) {
            showQrisBtn.addEventListener('click', function () {
                qrisModal.style.display = 'flex';
            });

            closeQrisBtn.addEventListener('click', function () {
                qrisModal.style.setProperty("display", "none", "important");
            });
        } else {
            console.error("Element QRIS modal/tombol tidak ditemukan!");
        }
    });
</script>

<!-- <script>
        document.addEventListener('DOMContentLoaded', function () {
            var invoice = @json(session('invoice'));

            if (invoice) {
                var printUrl = '{{ route('admin.transactionReceipt', ['invoice' => '__invoice__']) }}'.replace('__invoice__', invoice);

                window.open(printUrl, '_blank');

                @php
                    session()->forget('invoice');
                @endphp
            }
        });
    </script> -->
@endsection

@section('modal')
<div class="modal fade" id="transactionModal" tabindex="-1" aria-labelledby="transactionModallabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md">
        <div class="modal-content border rounded-0">
            <div class="modal-header border-0">
                <span class="fw-normal text-center h5 mb-0">TAMBAH TRANSAKSI | <a href="javascript:;" class="text-dark-hover" data-bs-toggle="modal" data-bs-target="#customerModal">DENGAN PELANGGAN BARU</a></span>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('customer.transactionStore') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="row px-xxl-2">
                        <div class="col-md-6">
                            <label for="package_id_transaction" class="fw-medium small h6">PAKET</label>
                            <div class="form-border-bottom form-control-transparent">
                                <select name="package_id" id="package_id_transaction" class="form-control" required>
                                    <option value="">Silakan pilih salah satu</option>
                                    @foreach ($package as $row)
                                    <option value="{{ $row->id }}" data-price="{{ $row->price }}">{{ ucwords($row->type) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <p class="text-danger small">{{ $errors->first('package_id') }}</p>
                        </div>
                        <div class="col-md-4">
                            <label for="weight_transaction" class="fw-medium small h6">BERAT</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="weight" id="weight_transaction" maxlength="3" class="form-control" required>
                                <span class="w-30px position-absolute top-50 end-0 translate-middle-y text-dark">KG</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('weight') }}</p>
                        </div>
                        <div class="col-md-4">
                            <label for="coupon_id_transaction" class="fw-medium small h6">KUPON</label>
                            <div class="form-border-bottom form-control-transparent">
                                <select name="coupon_id" id="coupon_id_transaction" class="form-control">
                                    <option value="">Silakan pilih salah satu</option>
                                </select>
                            </div>
                            <p class="text-danger small">{{ $errors->first('package_id') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="price_transaction" class="fw-medium small h6">HARGA</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="price" id="price_transaction" class="form-control ms-3" maxlength="7" required readonly>
                                <span class="w-30px position-absolute top-50 end-60 translate-middle-y text-dark">Rp.</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('price') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="amount_transaction" class="fw-medium small h6">JUMLAH YANG DIBAYAR</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="amount" id="amount_transaction" class="form-control ms-3" maxlength="7" required>
                                <span class="w-30px position-absolute top-50 end-60 translate-middle-y text-dark">Rp.</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('amount') }}</p>
                        </div>
<div class="d-flex justify-content-between align-items-center mb-3">
    <button type="button" class="btn btn-outline-dark rounded-0 w-100 mb-3" id="showQrisBtn">
        <i class="fa-solid fa-qrcode me-1"></i> Tampilkan QRIS
    </button>
    
    <div class="w-50 ms-2">
        <input type="file" name="payment_proof" id="proof" accept="image/*,application/pdf" class="form-control" required>
        <small class="text-muted">Upload bukti transfer</small>
    </div>
</div>

<!-- QRIS Preview -->
<div class="col-12">
    <!-- QRIS Preview -->
    <div id="qrisImageContainer" class="text-center mb-3" style="display: none;">
        <img src="{{ asset('Usaha.jpeg') }}" alt="QRIS" class="img-fluid" style="max-width: 200px;">
        <p class="text-muted small mt-2">Silakan scan QRIS di atas dan unggah bukti pembayaran.</p>
    </div>
</div>
                  </div>
                    <div class="d-flex justify-content-center align-items-center mb-0">
                        <button type="button" class="btn btn-secondary w-50 rounded-0 mb-0 me-3" data-bs-dismiss="modal" aria-label="Close">TUTUP</button>
                        <button type="submit" class="btn btn-dark w-50 rounded-0 mb-0">LANJUTKAN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="customerModal" tabindex="-1" aria-labelledby="customerModallabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md">
        <div class="modal-content border rounded-0">
            <div class="modal-header border-0">
                <span class="fw-normal text-center h5 mb-0">TAMBAH TRANSAKSI | <a href="javascript:;" class="text-dark-hover" data-bs-toggle="modal" data-bs-target="#transactionModal">SUDAH MEMILIKI PELANGGAN</a></span>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" action="{{ route('admin.transactionStoreCustomer') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="row px-xxl-2">
                        <div class="col-12">
                            <label for="name" class="fw-medium small h6">NAMA</label>
                            <div class="form-border-bottom form-control-transparent">
                                <input type="text" name="name" id="name_customer" class="form-control" value="{{ old('name') }}" required>
                            </div>
                            <p class="text-danger small">{{ $errors->first('name') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="gender" class="fw-medium small h6">JENIS KELAMIN</label>
                            <div class="form-border-bottom form-control-transparent">
                                <select name="gender" id="gender_customer" class="form-control js-choice h6" required>
                                    <option value="male">Laki-Laki</option>
                                    <option value="female">Perempuan</option>
                                </select>
                            </div>
                            <p class="text-danger small">{{ $errors->first('gender') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="phone_customer" class="fw-medium small h6">TELEPON</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="phone" id="phone_customer" class="form-control ms-3" maxlength="15" value="{{ old('phone') }}" required>
                                <span class="w-30px position-absolute top-50 end-60 translate-middle-y text-dark">+62</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('phone') }}</p>
                        </div>
                        <div class="col-12">
                            <label for="address" class="fw-medium small h6">ALAMAT</label>
                            <div class="form-border-bottom form-control-transparent">
                                <textarea name="address" id="address" class="form-control" rows="3" required>{{ old('address') }}</textarea>
                            </div>
                            <p class="text-danger small">{{ $errors->first('address') }}</p>
                        </div>
                        <div class="col-md-4">
                            <label for="package_id_customer" class="fw-medium small h6">PAKET</label>
                            <div class="form-border-bottom form-control-transparent">
                                <select name="package_id" id="package_id_customer" class="form-control" required>
                                    <option value="">Silakan pilih salah satu</option>
                                    @foreach ($package as $row)
                                    <option value="{{ $row->id }}" data-price="{{ $row->price }}">{{ ucwords($row->type) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <p class="text-danger small">{{ $errors->first('package_id') }}</p>
                        </div>
                        <div class="col-md-4">
                            <label for="date_customer" class="fw-medium small h6">TANGGAL</label>
                            <div class="form-border-bottom form-control-transparent">
                                <input type="text" name="date" id="date_customer" class="form-control flatpickr" data-date-format="d F Y" placeholder="Pilih Tanggal" required>
                            </div>
                            <p class="text-danger small">{{ $errors->first('date') }}</p>
                        </div>
                        <div class="col-md-4">
                            <label for="weight_customer" class="fw-medium small h6">BERAT</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="weight" id="weight_customer" maxlength="3" class="form-control" required>
                                <span class="w-30px position-absolute top-50 end-0 translate-middle-y text-dark">KG</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('weight') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="price_customer" class="fw-medium small h6">HARGA</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="price" id="price_customer" class="form-control ms-3" maxlength="7" required readonly>
                                <span class="w-30px position-absolute top-50 end-60 translate-middle-y text-dark">Rp.</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('price') }}</p>
                        </div>
                        <div class="col-md-6">
                            <label for="amount_customer" class="fw-medium small h6">JUMLAH YANG DIBAYAR</label>
                            <div class="form-border-bottom form-control-transparent position-relative">
                                <input type="text" name="amount" id="amount_customer" class="form-control ms-3" maxlength="7" required>
                                <span class="w-30px position-absolute top-50 end-60 translate-middle-y text-dark">Rp.</span>
                            </div>
                            <p class="text-danger small">{{ $errors->first('amount') }}</p>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center align-items-center mb-0">
                        <button type="button" class="btn btn-secondary w-50 rounded-0 mb-0 me-3" data-bs-dismiss="modal" aria-label="Close">TUTUP</button>
                        <button type="submit" class="btn btn-dark w-50 rounded-0 mb-0">LANJUTKAN</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="qrisModal" class="position-fixed top-0 start-0 w-100 h-100 bg-dark bg-opacity-75 d-flex justify-content-center align-items-center" style="display: none !important; z-index: 9999;">
    <div class="bg-white p-4 rounded shadow" style="max-width: 300px; width: 100%;">
        <img src="{{ asset('Usaha.jpeg') }}" alt="QRIS" class="img-fluid mb-3">
        <p class="text-muted text-center small">Silakan scan QRIS di atas dan unggah bukti pembayaran.</p>
        <button class="btn btn-secondary w-100" id="closeQrisBtn">Tutup</button>
    </div>
</div>
@endsection

@section('js')
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
@endsection

@section('script')
<script>
    $(document).ready(function() {
        let start = moment().startOf('month');
        let end = moment().endOf('month');

        function formatDateForLink(date) {
            return date.format('DD MMMM YYYY');
        }

        $('#date').daterangepicker({
            startDate: start,
            endDate: end,
            locale: {
                format: 'DD MMMM YYYY',
            }
        }, function(first, last) {
            $('#exportpdf').attr('href', '/customer/transaction/pdf/' + formatDateForLink(first) + '+' + formatDateForLink(last));
        });

        $('#exportpdf').attr('href', '/customer/transaction/pdf/' + formatDateForLink(start) + '+' + formatDateForLink(end));
    });
</script>

@endsection