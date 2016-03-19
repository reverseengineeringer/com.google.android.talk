.class final Lesl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lesk;


# direct methods
.method constructor <init>(Lesk;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lesl;->b:Lesk;

    iput-object p2, p0, Lesl;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lesl;->a:Landroid/content/Context;

    invoke-static {v1}, Lesk;->e(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lesl;->a:Landroid/content/Context;

    invoke-static {v1}, Lesk;->f(Landroid/content/Context;)V

    .line 134
    iget-object v1, p0, Lesl;->a:Landroid/content/Context;

    .line 1230
    invoke-static {v1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v2

    .line 1235
    invoke-static {v1}, Laal;->n(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1236
    const-string v1, "babel_tycho_only_short_codes"

    const-string v3, "+1611,+1711,+1911"

    invoke-interface {v2, v1, v3}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1239
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 1240
    invoke-static {v4}, Lezm;->i(Ljava/lang/String;)V

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1244
    :cond_0
    const-string v1, "babel_gv_supported_service_codes"

    const-string v3, "+1611,+1711,+1911"

    invoke-interface {v2, v1, v3}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 1248
    invoke-static {v4}, Lezm;->i(Ljava/lang/String;)V

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1252
    :cond_1
    const-string v0, "babel_us_anonymous_call_prefix"

    const-string v1, "*67"

    invoke-interface {v2, v0, v1}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1582
    sget-object v2, Lezm;->a:Lif;

    invoke-virtual {v2, v1, v0}, Lif;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lesl;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    new-instance v1, Lesn;

    iget-object v2, p0, Lesl;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lesn;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 138
    new-instance v0, Leuw;

    iget-object v1, p0, Lesl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Leuw;-><init>(Landroid/content/Context;)V

    .line 2097
    sget-object v1, Leut;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method
