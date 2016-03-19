.class public abstract Lebh;
.super Leap;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Leap;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lebh;->a:I

    .line 19
    iput-object p1, p0, Lebh;->b:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lebh;->a:I

    if-ltz v0, :cond_1

    .line 30
    iput p1, p0, Lebh;->a:I

    .line 31
    if-gez p1, :cond_0

    .line 32
    iget-object v0, p0, Lebh;->b:Landroid/content/Context;

    const-class v1, Leat;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    invoke-interface {v0, p0}, Leat;->b(Leap;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iput p1, p0, Lebh;->a:I

    .line 36
    if-ltz p1, :cond_0

    .line 37
    iget-object v0, p0, Lebh;->b:Landroid/content/Context;

    const-class v1, Leat;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    invoke-interface {v0, p0}, Leat;->a(Leap;)V

    goto :goto_0
.end method

.method public final a(ILbfd;Leau;)V
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lebh;->a:I

    if-ne v0, p1, :cond_0

    .line 46
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lebh;->a(I)V

    .line 47
    invoke-virtual {p0, p3}, Lebh;->a(Leau;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final a(ILbfd;Leff;Ldvn;)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lebh;->a:I

    if-ne v0, p1, :cond_0

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lebh;->a(I)V

    .line 56
    invoke-virtual {p0, p4}, Lebh;->a(Ljava/lang/Exception;)V

    .line 58
    :cond_0
    return-void
.end method

.method public abstract a(Leau;)V
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
