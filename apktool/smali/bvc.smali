.class public Lbvc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhaw;


# direct methods
.method public constructor <init>(Lhaw;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbvc;->a:Lhaw;

    .line 17
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbvc;->a:Lhaw;

    invoke-interface {v0, p1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 21
    return-void
.end method

.method public a(IIILjava/lang/Integer;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lklc;

    invoke-direct {v0}, Lklc;-><init>()V

    .line 53
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lklc;->c:Ljava/lang/Integer;

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lklc;->d:Ljava/lang/Integer;

    .line 55
    if-eqz p4, :cond_0

    .line 56
    iput-object p4, v0, Lklc;->a:Ljava/lang/Integer;

    .line 59
    :cond_0
    iget-object v1, p0, Lbvc;->a:Lhaw;

    invoke-interface {v1, p1}, Lhaw;->a(I)Lhax;

    move-result-object v1

    invoke-interface {v1, v0}, Lhax;->a(Lklc;)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 60
    return-void
.end method

.method public a(IILjava/lang/Integer;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lklc;

    invoke-direct {v0}, Lklc;-><init>()V

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lklc;->b:Ljava/lang/Integer;

    .line 43
    if-eqz p3, :cond_0

    .line 44
    iput-object p3, v0, Lklc;->a:Ljava/lang/Integer;

    .line 47
    :cond_0
    iget-object v1, p0, Lbvc;->a:Lhaw;

    invoke-interface {v1, p1}, Lhaw;->a(I)Lhax;

    move-result-object v1

    invoke-interface {v1, v0}, Lhax;->a(Lklc;)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 48
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 28
    const/16 v0, 0x911

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lbvc;->a(IILjava/lang/Integer;)V

    .line 29
    return-void
.end method
