.class public final Lask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajb",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lasn;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Laix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laix",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lasl;

.field private static final c:Lasm;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lasm;

.field private final f:Lamd;

.field private final g:Lasl;

.field private final h:Lail;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lasl;

    invoke-direct {v0}, Lasl;-><init>()V

    sput-object v0, Lask;->b:Lasl;

    .line 42
    const-string v0, "com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.DisableAnimation"

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Laix;->a(Ljava/lang/String;Ljava/lang/Object;)Laix;

    move-result-object v0

    sput-object v0, Lask;->a:Laix;

    .line 45
    new-instance v0, Lasm;

    invoke-direct {v0}, Lasm;-><init>()V

    sput-object v0, Lask;->c:Lasm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lamd;Laly;)V
    .locals 6

    .prologue
    .line 59
    sget-object v4, Lask;->c:Lasm;

    sget-object v5, Lask;->b:Lasl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lask;-><init>(Landroid/content/Context;Lamd;Laly;Lasm;Lasl;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lamd;Laly;Lasm;Lasl;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lask;->d:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lask;->f:Lamd;

    .line 71
    iput-object p5, p0, Lask;->g:Lasl;

    .line 72
    new-instance v0, Lail;

    invoke-direct {v0, p2, p3}, Lail;-><init>(Lamd;Laly;)V

    iput-object v0, p0, Lask;->h:Lail;

    .line 73
    iput-object p4, p0, Lask;->e:Lasm;

    .line 74
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;II)Lasi;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lask;->e:Lasm;

    invoke-virtual {v1, p1}, Lasm;->a(Ljava/nio/ByteBuffer;)Laio;

    move-result-object v8

    .line 1095
    :try_start_0
    invoke-static {}, Lavm;->a()J

    move-result-wide v10

    .line 1096
    invoke-virtual {v8}, Laio;->b()Lain;

    move-result-object v3

    .line 1097
    invoke-virtual {v3}, Lain;->c()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3}, Lain;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    iget-object v1, p0, Lask;->e:Lasm;

    invoke-virtual {v1, v8}, Lasm;->a(Laio;)V

    return-object v0

    .line 1125
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lain;->a()I

    move-result v1

    div-int/2addr v1, p3

    .line 1126
    invoke-virtual {v3}, Lain;->b()I

    move-result v2

    div-int/2addr v2, p2

    .line 1125
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1127
    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 1130
    :goto_1
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1131
    const-string v2, "BufferGifDecoder"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    const-string v2, "Downsampling gif, sampleSize: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-virtual {v3}, Lain;->b()I

    move-result v4

    invoke-virtual {v3}, Lain;->a()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x5f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", target dimens: ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "], actual dimens: ["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_2
    iget-object v4, p0, Lask;->h:Lail;

    .line 1144
    new-instance v2, Laik;

    invoke-direct {v2, v4, v3, p1, v1}, Laik;-><init>(Lail;Lain;Ljava/nio/ByteBuffer;I)V

    .line 1105
    invoke-virtual {v2}, Laik;->b()V

    .line 1106
    invoke-virtual {v2}, Laik;->g()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1107
    if-eqz v7, :cond_0

    .line 2023
    sget-object v4, Laqt;->b:Lajd;

    check-cast v4, Laqt;

    .line 1113
    new-instance v0, Lasn;

    iget-object v1, p0, Lask;->d:Landroid/content/Context;

    iget-object v3, p0, Lask;->f:Lamd;

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lasn;-><init>(Landroid/content/Context;Laik;Lamd;Lajd;IILandroid/graphics/Bitmap;)V

    .line 1117
    const-string v1, "BufferGifDecoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    invoke-static {v10, v11}, Lavm;->a(J)D

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x33

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Decoded gif from stream in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1121
    :cond_3
    new-instance v1, Lasi;

    invoke-direct {v1, v0}, Lasi;-><init>(Lasn;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1127
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto/16 :goto_1

    .line 89
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lask;->e:Lasm;

    invoke-virtual {v1, v8}, Lasm;->a(Laio;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3}, Lask;->a(Ljava/nio/ByteBuffer;II)Lasi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;Laja;)Z
    .locals 2

    .prologue
    .line 33
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2078
    new-instance v1, Lamg;

    invoke-direct {v1}, Lamg;-><init>()V

    .line 2079
    sget-object v0, Lask;->a:Laix;

    invoke-virtual {p2, v0}, Laja;->a(Laix;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/nio/ByteBuffer;Lamg;)V

    .line 2080
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->b()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method
