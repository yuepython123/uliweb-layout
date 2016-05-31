/*
 * box widget
 * <box type=[primary, default, import, success, warning]>
 */
<box>
  <div class="{ box: true,
    box-primary: opts.type=='primary',
    box-success: opts.type=='success',
    box-warning: opts.type=='warning',
    box-info: opts.type=='info',
    box-danger: opts.type=='danger',
    box-default: opts.type=='default' || !opts.type }">

    <div class="{box-header:true, with-border:opts.border}"
        if={ opts.subject } data-is="box-header">
    </div>

    <div class="box-body">
        <yield/>
    </div>
  </div>
</box>

<box-header>
  <h3 class="box-title">{ parent.opts.subject }</h3>
  <div class="box-tools pull-right" if={ parent.opts.collapse || parent.opts.remove }>
    <button type="button" class="btn btn-box-tool" data-widget="collapse" if={ parent.opts.collapse }>
        <i class="fa fa-minus"></i>
    </button>
    <button type="button" class="btn btn-box-tool" data-widget="remove" if={ parent.opts.remove }>
        <i class="fa fa-times"></i>
    </button>
  </div>
</box-header>

