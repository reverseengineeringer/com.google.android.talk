.class public final Lail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lamd;

.field public final b:Laly;


# direct methods
.method public constructor <init>(Lamd;Laly;)V
    .locals 0

    .prologue
    .line 2032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2033
    iput-object p1, p0, Lail;->a:Lamd;

    .line 2034
    iput-object p2, p0, Lail;->b:Laly;

    .line 2035
    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lail;->a:Lamd;

    invoke-interface {v0, p1, p2, p3}, Lamd;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lail;->a:Lamd;

    invoke-interface {v0, p1}, Lamd;->a(Landroid/graphics/Bitmap;)V

    .line 1046
    return-void
.end method

.method public a([B)V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lail;->b:Laly;

    if-nez v0, :cond_0

    .line 1063
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lail;->b:Laly;

    const-class v1, [B

    invoke-virtual {v0, p1, v1}, Laly;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a([I)V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lail;->b:Laly;

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return-void

    .line 1079
    :cond_0
    iget-object v0, p0, Lail;->b:Laly;

    const-class v1, [I

    invoke-virtual {v0, p1, v1}, Laly;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public a(I)[B
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lail;->b:Laly;

    if-nez v0, :cond_0

    .line 1051
    new-array v0, p1, [B

    .line 1053
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lail;->b:Laly;

    const-class v1, [B

    invoke-virtual {v0, p1, v1}, Laly;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public b(I)[I
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lail;->b:Laly;

    if-nez v0, :cond_0

    .line 1068
    new-array v0, p1, [I

    .line 1070
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lail;->b:Laly;

    const-class v1, [I

    invoke-virtual {v0, p1, v1}, Laly;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method
