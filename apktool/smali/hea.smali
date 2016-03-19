.class final Lhea;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lhea;->a:Lhdz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 322
    iget-object v0, p0, Lhea;->a:Lhdz;

    .line 1270
    iget-boolean v0, v0, Lhdz;->b:Z

    .line 322
    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_0
    iget-object v0, p0, Lhea;->a:Lhdz;

    .line 2270
    iget-object v0, v0, Lhdz;->a:Landroid/os/Handler;

    .line 328
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lhge;

    if-nez v0, :cond_2

    iget-object v0, p0, Lhea;->a:Lhdz;

    iget-object v0, v0, Lhdz;->c:Lhee;

    .line 3039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 331
    iget-object v0, v0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_4

    .line 332
    :cond_2
    iget-object v0, p0, Lhea;->a:Lhdz;

    invoke-virtual {v0}, Lhdz;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    const-string v0, "eglMakeCurrent failed"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lhge;

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhge;

    .line 338
    invoke-virtual {v0}, Lhge;->l()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    move v1, v0

    .line 341
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lhgn;

    .line 342
    invoke-virtual {v0}, Lhgn;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lhea;->a:Lhdz;

    iget-object v1, v1, Lhdz;->c:Lhee;

    .line 4039
    iget-object v1, v1, Lhee;->a:Ljava/util/List;

    .line 343
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_0

    .line 344
    iget-object v1, p0, Lhea;->a:Lhdz;

    iget-object v1, v1, Lhdz;->c:Lhee;

    .line 5039
    iget-object v1, v1, Lhee;->a:Ljava/util/List;

    .line 344
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhec;

    .line 345
    iget-object v4, v1, Lhec;->b:Lhgn;

    if-ne v4, v0, :cond_6

    .line 346
    invoke-virtual {v1}, Lhec;->b()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 338
    goto :goto_1

    .line 343
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 353
    :pswitch_1
    const-string v0, "vclib"

    const-string v2, "GlThread notified to quit, shutting down."

    .line 5081
    const/4 v3, 0x4

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lhea;->a:Lhdz;

    .line 5270
    iput-boolean v1, v0, Lhdz;->b:Z

    .line 355
    iget-object v0, p0, Lhea;->a:Lhdz;

    .line 6270
    iget-object v0, v0, Lhdz;->a:Landroid/os/Handler;

    .line 355
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lheb;

    invoke-direct {v1, p0}, Lheb;-><init>(Lhea;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
