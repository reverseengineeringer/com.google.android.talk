.class final enum Lhom;
.super Lhoh;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x3

    .line 1434
    invoke-direct {p0, p1, v0}, Lhoh;-><init>(Ljava/lang/String;I)V

    .line 505
    return-void
.end method


# virtual methods
.method a(Lhos;Ljava/lang/String;Lhof;)Z
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p3, p1}, Lhof;->b(Lhos;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lhoc;->a(Lhos;Ljava/lang/String;Lhof;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lhoc;->a(Lhos;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3}, Lhoc;->a(Lhos;Lhof;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 514
    :goto_0
    return v0

    :cond_1
    new-instance v0, Lhon;

    invoke-direct {v0, p0}, Lhon;-><init>(Lhom;)V

    invoke-static {p1, p2, p3, v0}, Lhoc;->a(Lhos;Ljava/lang/String;Lhof;Lhod;)Z

    move-result v0

    goto :goto_0
.end method
