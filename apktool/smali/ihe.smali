.class public final Lihe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lihh;


# static fields
.field public static final a:Limw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Limw;

    const-string v1, "debug.social.rpc.debug_log"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lihe;->a:Limw;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/16 v2, 0x17

    const/4 v0, 0x0

    .line 55
    const-string v1, "HttpOperation"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1042
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 56
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lihp;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lihe;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lihe;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const/4 v0, 0x3

    const-string v1, "HttpOperation"

    invoke-static {v0, v1, p1}, Laal;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x2

    const-string v1, "HttpOperation"

    invoke-static {v0, v1, p1}, Laal;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
