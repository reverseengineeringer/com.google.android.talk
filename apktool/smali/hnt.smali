.class public final Lhnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhnj;


# static fields
.field private static final c:Ljava/nio/charset/Charset;


# instance fields
.field a:Lgyi;

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lhnt;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgyi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2028
    invoke-direct {p0}, Lhnt;-><init>()V

    .line 2029
    iput-object p1, p0, Lhnt;->a:Lgyi;

    .line 2030
    iput-object p2, p0, Lhnt;->b:Ljava/lang/String;

    .line 2031
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 36
    invoke-static {p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "name can not be empty."

    invoke-static {p0, v0}, Laen;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 39
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 40
    sget-object v1, Lhnt;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 41
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Lmik;)V
    .locals 3

    .prologue
    .line 1035
    const-string v0, "ClearcutTransmitter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p1}, Lmik;->toString()Ljava/lang/String;

    .line 1039
    :cond_0
    iget-object v0, p0, Lhnt;->a:Lgyi;

    iget-object v1, p0, Lhnt;->b:Ljava/lang/String;

    .line 1042
    invoke-static {p1}, Llyi;->a(Llyi;)[B

    move-result-object v2

    .line 1039
    invoke-interface {v0, v1, v2}, Lgyi;->a(Ljava/lang/String;[B)V

    .line 1043
    return-void
.end method


# virtual methods
.method public a(Lmik;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p1, Lmik;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmik;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p1, Lmik;->c:Ljava/lang/String;

    invoke-static {v0}, Lhnt;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lmik;->b:Ljava/lang/Long;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p1, Lmik;->c:Ljava/lang/String;

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lhnt;->b(Lmik;)V

    .line 31
    return-void
.end method
