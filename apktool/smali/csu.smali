.class public final Lcsu;
.super Likt;
.source "SourceFile"


# instance fields
.field private aj:Lcsv;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Likt;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Likt;->e(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcsu;->an:Lilh;

    const-class v1, Lcsv;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsv;

    iput-object v0, p0, Lcsu;->aj:Lcsv;

    .line 38
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcsu;->aj:Lcsv;

    invoke-interface {v0}, Lcsv;->b()V

    .line 55
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    packed-switch p2, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcsu;->aj:Lcsv;

    invoke-interface {v0}, Lcsv;->a()V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcsu;->aj:Lcsv;

    invoke-interface {v0}, Lcsv;->b()V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
