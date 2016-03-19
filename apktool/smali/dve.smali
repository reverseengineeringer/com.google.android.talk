.class final Ldve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lhqb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 1752
    check-cast p1, Lhqb;

    check-cast p2, Lhqb;

    .line 3074
    sget-object v0, Lkri;->a:Lkri;

    .line 4057
    invoke-static {p1}, Ldvd;->a(Lhqb;)Z

    move-result v1

    .line 5057
    invoke-static {p2}, Ldvd;->a(Lhqb;)Z

    move-result v2

    .line 2756
    invoke-virtual {v0, v1, v2}, Lkri;->a(ZZ)Lkri;

    move-result-object v0

    const-string v1, "sms_only"

    .line 2758
    invoke-interface {p1, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "sms_only"

    .line 2759
    invoke-interface {p2, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v2

    .line 2757
    invoke-virtual {v0, v1, v2}, Lkri;->b(ZZ)Lkri;

    move-result-object v0

    const-string v1, "gaia_id"

    .line 2763
    invoke-interface {p1, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gaia_id"

    .line 2764
    invoke-interface {p2, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5147
    sget-object v3, Lkxf;->a:Lkxf;

    .line 2765
    invoke-virtual {v3}, Lkxj;->b()Lkxj;

    move-result-object v3

    .line 2762
    invoke-virtual {v0, v1, v2, v3}, Lkri;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lkri;

    move-result-object v0

    .line 2766
    invoke-virtual {v0}, Lkri;->a()I

    move-result v0

    .line 1752
    return v0
.end method
