.class public final Lkyz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[B

.field private static final b:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lkyz;->a:[B

    .line 563
    new-instance v0, Lkza;

    invoke-direct {v0}, Lkza;-><init>()V

    sput-object v0, Lkyz;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 107
    invoke-static {p0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 110
    const-wide/16 v0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 113
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 116
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 173
    invoke-static {p0, v0}, Lkyz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 174
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
