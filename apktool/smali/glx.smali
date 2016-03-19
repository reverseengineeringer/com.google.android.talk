.class public final Lglx;
.super Ljava/lang/Object;


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lglx;->a:I

    return-void
.end method


# virtual methods
.method public a()Lglw;
    .locals 2

    .prologue
    .line 0
    iget v0, p0, Lglx;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must provide valid client application ID!"

    invoke-static {v0, v1}, Laal;->b(ZLjava/lang/Object;)V

    new-instance v0, Lglw;

    .line 1000
    invoke-direct {v0, p0}, Lglw;-><init>(Lglx;)V

    .line 0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lglx;
    .locals 0

    iput p1, p0, Lglx;->a:I

    return-object p0
.end method
