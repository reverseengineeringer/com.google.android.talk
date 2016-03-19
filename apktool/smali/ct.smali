.class public final Lct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ldc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 830
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 831
    new-instance v0, Lde;

    invoke-direct {v0}, Lde;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    .line 847
    :goto_0
    return-void

    .line 832
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 833
    new-instance v0, Ldd;

    invoke-direct {v0}, Ldd;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 834
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 835
    new-instance v0, Ldj;

    invoke-direct {v0}, Ldj;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 836
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 837
    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 838
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 839
    new-instance v0, Ldh;

    invoke-direct {v0}, Ldh;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 840
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 841
    new-instance v0, Ldg;

    invoke-direct {v0}, Ldg;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 842
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 843
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0

    .line 845
    :cond_6
    new-instance v0, Ldc;

    invoke-direct {v0}, Ldc;-><init>()V

    sput-object v0, Lct;->a:Ldc;

    goto :goto_0
.end method

.method static a(Lcr;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcr;",
            "Ljava/util/ArrayList",
            "<",
            "Lcu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcu;

    .line 795
    invoke-interface {p0, v0}, Lcr;->a(Ldo;)V

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method static a(Lcs;Ldk;)V
    .locals 7

    .prologue
    .line 801
    if-eqz p1, :cond_0

    .line 802
    instance-of v0, p1, Lcx;

    if-eqz v0, :cond_1

    .line 803
    check-cast p1, Lcx;

    .line 804
    iget-object v0, p1, Lcx;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Lcx;->g:Z

    iget-object v2, p1, Lcx;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcx;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Ldr;->a(Lcs;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    instance-of v0, p1, Ldb;

    if-eqz v0, :cond_2

    .line 810
    check-cast p1, Ldb;

    .line 811
    iget-object v0, p1, Ldb;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Ldb;->g:Z

    iget-object v2, p1, Ldb;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Ldb;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Ldr;->a(Lcs;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 816
    :cond_2
    instance-of v0, p1, Lcw;

    if-eqz v0, :cond_0

    .line 817
    check-cast p1, Lcw;

    .line 818
    iget-object v1, p1, Lcw;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Lcw;->g:Z

    iget-object v3, p1, Lcw;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcw;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Lcw;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Lcw;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Ldr;->a(Lcs;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
