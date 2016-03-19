.class public final Lmna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final b:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final c:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/nio/charset/Charset;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lmnd;->a:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lmna;->a:Lorg/apache/http/util/ByteArrayBuffer;

    .line 93
    sget-object v0, Lmnd;->a:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    .line 94
    sget-object v0, Lmnd;->a:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lmna;->c:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p3, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lmna;->d:Ljava/lang/String;

    .line 122
    sget-object v0, Lmnd;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lmna;->e:Ljava/nio/charset/Charset;

    .line 123
    iput-object p3, p0, Lmna;->f:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmna;->g:Ljava/util/List;

    .line 125
    iput p4, p0, Lmna;->h:I

    .line 126
    return-void
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 4

    .prologue
    .line 53
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 56
    return-object v1
.end method

.method private a(ILjava/io/OutputStream;Z)V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Lmna;->e:Ljava/nio/charset/Charset;

    .line 1169
    iget-object v1, p0, Lmna;->f:Ljava/lang/String;

    .line 177
    invoke-static {v0, v1}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v2

    .line 178
    iget-object v0, p0, Lmna;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmy;

    .line 179
    sget-object v1, Lmna;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 180
    invoke-static {v2, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 181
    sget-object v1, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v0}, Lmmy;->b()Lmmz;

    move-result-object v1

    .line 185
    sget-object v4, Lmnb;->a:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 203
    :cond_0
    :goto_1
    sget-object v1, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 205
    if-eqz p3, :cond_1

    .line 206
    invoke-virtual {v0}, Lmmy;->a()Lmng;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmng;->a(Ljava/io/OutputStream;)V

    .line 208
    :cond_1
    sget-object v0, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {v1}, Lmmz;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmne;

    .line 2078
    invoke-virtual {v1}, Lmne;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Lmna;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 2079
    sget-object v5, Lmna;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v5, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 2080
    invoke-virtual {v1}, Lmne;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lmna;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 2081
    sget-object v1, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 194
    :pswitch_1
    invoke-virtual {v0}, Lmmy;->b()Lmmz;

    move-result-object v1

    const-string v4, "Content-Disposition"

    invoke-virtual {v1, v4}, Lmmz;->a(Ljava/lang/String;)Lmne;

    move-result-object v1

    .line 195
    iget-object v4, p0, Lmna;->e:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lmna;->a(Lmne;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 196
    invoke-virtual {v0}, Lmmy;->a()Lmng;

    move-result-object v1

    invoke-virtual {v1}, Lmng;->e()Ljava/lang/String;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lmmy;->b()Lmmz;

    move-result-object v1

    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Lmmz;->a(Ljava/lang/String;)Lmne;

    move-result-object v1

    .line 199
    iget-object v4, p0, Lmna;->e:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lmna;->a(Lmne;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 210
    :cond_2
    sget-object v0, Lmna;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 211
    invoke-static {v2, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 212
    sget-object v0, Lmna;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 213
    sget-object v0, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 214
    return-void

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lmnd;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {p1, p0}, Lmna;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 67
    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 68
    return-void
.end method

.method private static a(Lmne;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lmne;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmna;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 87
    sget-object v0, Lmna;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {p0}, Lmne;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmna;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 89
    sget-object v0, Lmna;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lmna;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 90
    return-void
.end method

.method private static a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmmy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lmna;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lmna;->h:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lmna;->a(ILjava/io/OutputStream;Z)V

    .line 225
    return-void
.end method

.method public a(Lmmy;)V
    .locals 1

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lmna;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    .line 242
    iget-object v0, p0, Lmna;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmy;

    .line 243
    invoke-virtual {v0}, Lmmy;->a()Lmng;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lmng;->d()J

    move-result-wide v0

    .line 245
    cmp-long v9, v0, v4

    if-ltz v9, :cond_0

    .line 246
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v6

    .line 258
    :goto_1
    return-wide v0

    .line 251
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 253
    :try_start_0
    iget v1, p0, Lmna;->h:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v4}, Lmna;->a(ILjava/io/OutputStream;Z)V

    .line 254
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 255
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    move-wide v0, v6

    goto :goto_1
.end method
