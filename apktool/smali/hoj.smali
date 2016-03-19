.class final enum Lhoj;
.super Lhoh;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    .line 1434
    invoke-direct {p0, p1, v0}, Lhoh;-><init>(Ljava/lang/String;I)V

    .line 451
    return-void
.end method


# virtual methods
.method a(Lhos;Ljava/lang/String;Lhof;)Z
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p3, p1}, Lhof;->b(Lhos;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lhoc;->a(Lhos;Ljava/lang/String;Lhof;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p3}, Lhoc;->a(Lhos;Lhof;)Z

    move-result v0

    goto :goto_0
.end method
