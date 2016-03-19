.class public final Lfhz;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 3444
    iput-object p1, p0, Lfhz;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1447
    iget-object v0, p0, Lfhz;->a:Landroid/support/design/widget/Snackbar;

    .line 2394
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/Snackbar;->d:La;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lfdr;->a(La;I)V

    .line 1448
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 2452
    packed-switch p1, :pswitch_data_0

    .line 2463
    :goto_0
    return-void

    .line 2456
    :pswitch_0
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Lfhz;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)La;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdr;->c(La;)V

    goto :goto_0

    .line 2460
    :pswitch_1
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Lfhz;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)La;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdr;->d(La;)V

    goto :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
