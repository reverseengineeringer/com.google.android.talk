.class public final Laqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapg",
        "<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laqo;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 4

    .prologue
    .line 27
    check-cast p1, Landroid/net/Uri;

    .line 2037
    invoke-static {p2, p3}, Laal;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2045
    sget-object v0, Lasb;->a:Laix;

    invoke-virtual {p4, v0}, Laja;->a(Laix;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2046
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2037
    :goto_0
    if-eqz v0, :cond_1

    .line 2038
    new-instance v0, Laph;

    new-instance v1, Lavf;

    invoke-direct {v1, p1}, Lavf;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Laqo;->a:Landroid/content/Context;

    .line 3036
    new-instance v3, Lajz;

    invoke-direct {v3}, Lajz;-><init>()V

    invoke-static {v2, p1, v3}, Lajx;->a(Landroid/content/Context;Landroid/net/Uri;Laka;)Lajx;

    move-result-object v2

    .line 2038
    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    :goto_1
    return-object v0

    .line 2046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2040
    :cond_1
    const/4 v0, 0x0

    .line 27
    goto :goto_1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 27
    check-cast p1, Landroid/net/Uri;

    .line 2028
    invoke-static {p1}, Laal;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Laal;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_0
.end method
