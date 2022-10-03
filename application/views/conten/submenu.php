<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?= $title ?></h1>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <?= form_error('submenu', '<div class="alert alert-danger" role="alert">
                ', '
              </div>') ?>
            <?= form_error('menu_id', '<div class="alert alert-danger" role="alert">
                ', '
              </div>') ?>
            <?= form_error('url', '<div class="alert alert-danger" role="alert">
                ', '
              </div>') ?>

            <?= $this->session->flashdata('message') ?>

            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i> | Add New Sub Menu</button>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Sub Menu</th>
                        <th scope="col">Menu</th>
                        <th scope="col">URL</th>
                        <th scope="col">Icon</th>
                        <th scope="col">Status Menu</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $x = 1;
                    foreach ($subMenu as $sm) { ?>
                        <tr>
                            <th scope="row"><?= $x++; ?></th>
                            <td><?= $sm['title'] ?></td>
                            <td><?= $sm['nama_menu'] ?></td>
                            <td><?= $sm['url'] ?></td>
                            <td><?= $sm['icon'] ?></td>
                            <td><?= $sm['is_active'] ?></td>
                            <td>
                                <button type="button" class="btn btn-warning"><i class="fa fa-edit"></i></button>
                                <button type="button" class="btn btn-danger"><i class="fa fa-power-off"></i></button>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>




</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Sub Menu</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('menu/submenu') ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Sub Menu Name</label>
                        <input type="text" class="form-control" id="submenu" name="submenu" placeholder="Menu Name ...">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Menu Name</label>
                        <select name="menu_id" id="menu_id" class="form-control">
                            <option value="">-- Select Category Menu --</option>
                            <?php foreach ($menu as $row) { ?>
                                <option value="<?= $row['id_menu'] ?>"><?= $row['nama_menu'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">URL</label>
                        <input type="text" class="form-control" id="url" name="url" placeholder="Menu Url ...">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Icon</label>
                        <input type="text" class="form-control" id="icon" name="icon" placeholder="Menu icon ...">
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="1" id="status" name="status" checked>
                        <label class="form-check-label" for="status">
                            Active
                        </label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>