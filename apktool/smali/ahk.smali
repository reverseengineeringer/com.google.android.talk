.class public Lahk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile a:Lahk;


# instance fields
.field private final b:Lalh;

.field private final c:Lamd;

.field private final d:Lane;

.field private final e:Lant;

.field private final f:Lahm;

.field private final g:Laht;

.field private final h:Laly;

.field private final i:Lamg;

.field private final j:Lati;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lalh;Lane;Lamd;Laly;Lati;ILauk;)V
    .locals 10

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lahk;->k:Ljava/util/List;

    .line 183
    iput-object p2, p0, Lahk;->b:Lalh;

    .line 184
    iput-object p4, p0, Lahk;->c:Lamd;

    .line 185
    iput-object p5, p0, Lahk;->h:Laly;

    .line 186
    iput-object p3, p0, Lahk;->d:Lane;

    .line 187
    move-object/from16 v0, p6

    iput-object v0, p0, Lahk;->j:Lati;

    .line 188
    new-instance v1, Lamg;

    invoke-direct {v1}, Lamg;-><init>()V

    iput-object v1, p0, Lahk;->i:Lamg;

    .line 1867
    move-object/from16 v0, p8

    iget-object v1, v0, Laug;->q:Laja;

    .line 190
    sget-object v2, Larm;->a:Laix;

    invoke-virtual {v1, v2}, Laja;->a(Laix;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lais;

    .line 191
    new-instance v2, Lant;

    invoke-direct {v2, p3, p4, v1}, Lant;-><init>(Lane;Lamd;Lais;)V

    iput-object v2, p0, Lahk;->e:Lant;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 195
    new-instance v2, Larm;

    .line 196
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, p0, Lahk;->i:Lamg;

    invoke-direct {v2, v3, p4, v4}, Larm;-><init>(Landroid/util/DisplayMetrics;Lamd;Lamg;)V

    .line 197
    new-instance v3, Lask;

    invoke-direct {v3, p1, p4, p5}, Lask;-><init>(Landroid/content/Context;Lamd;Laly;)V

    .line 199
    new-instance v4, Laht;

    invoke-direct {v4, p1}, Laht;-><init>(Landroid/content/Context;)V

    const-class v5, Ljava/nio/ByteBuffer;

    new-instance v6, Laof;

    invoke-direct {v6}, Laof;-><init>()V

    .line 200
    invoke-virtual {v4, v5, v6}, Laht;->a(Ljava/lang/Class;Laiu;)Laht;

    move-result-object v4

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Lapv;

    iget-object v7, p0, Lahk;->i:Lamg;

    invoke-direct {v6, v7}, Lapv;-><init>(Lamg;)V

    .line 201
    invoke-virtual {v4, v5, v6}, Laht;->a(Ljava/lang/Class;Laiu;)Laht;

    move-result-object v4

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lara;

    invoke-direct {v7, v2}, Lara;-><init>(Larm;)V

    .line 203
    invoke-virtual {v4, v5, v6, v7}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v4

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Larx;

    iget-object v8, p0, Lahk;->i:Lamg;

    invoke-direct {v7, v2, v8}, Larx;-><init>(Larm;Lamg;)V

    .line 205
    invoke-virtual {v4, v5, v6, v7}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v4

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lasb;

    invoke-direct {v7, p4}, Lasb;-><init>(Lamd;)V

    .line 207
    invoke-virtual {v4, v5, v6, v7}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    new-instance v6, Laqx;

    invoke-direct {v6}, Laqx;-><init>()V

    .line 208
    invoke-virtual {v4, v5, v6}, Laht;->a(Ljava/lang/Class;Lajc;)Laht;

    move-result-object v4

    const-class v5, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Laqu;

    new-instance v8, Lara;

    invoke-direct {v8, v2}, Lara;-><init>(Larm;)V

    invoke-direct {v7, v1, p4, v8}, Laqu;-><init>(Landroid/content/res/Resources;Lamd;Lajb;)V

    .line 210
    invoke-virtual {v4, v5, v6, v7}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v4

    const-class v5, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Laqu;

    new-instance v8, Larx;

    iget-object v9, p0, Lahk;->i:Lamg;

    invoke-direct {v8, v2, v9}, Larx;-><init>(Larm;Lamg;)V

    invoke-direct {v7, v1, p4, v8}, Laqu;-><init>(Landroid/content/res/Resources;Lamd;Lajb;)V

    .line 213
    invoke-virtual {v4, v5, v6, v7}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Laqu;

    new-instance v7, Lasb;

    invoke-direct {v7, p4}, Lasb;-><init>(Lamd;)V

    invoke-direct {v6, v1, p4, v7}, Laqu;-><init>(Landroid/content/res/Resources;Lamd;Lajb;)V

    .line 216
    invoke-virtual {v2, v4, v5, v6}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Laqv;

    new-instance v6, Laqx;

    invoke-direct {v6}, Laqx;-><init>()V

    invoke-direct {v5, p4, v6}, Laqv;-><init>(Lamd;Lajc;)V

    .line 218
    invoke-virtual {v2, v4, v5}, Laht;->a(Ljava/lang/Class;Lajc;)Laht;

    move-result-object v2

    const-class v4, Ljava/io/InputStream;

    const-class v5, Lasn;

    new-instance v6, Lasx;

    iget-object v7, p0, Lahk;->i:Lamg;

    invoke-direct {v6, v3, v7}, Lasx;-><init>(Lajb;Lamg;)V

    .line 220
    invoke-virtual {v2, v4, v5, v6}, Laht;->b(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v5, Lasn;

    .line 222
    invoke-virtual {v2, v4, v5, v3}, Laht;->b(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    const-class v3, Lasn;

    new-instance v4, Lasp;

    invoke-direct {v4}, Lasp;-><init>()V

    .line 223
    invoke-virtual {v2, v3, v4}, Laht;->a(Ljava/lang/Class;Lajc;)Laht;

    move-result-object v2

    const-class v3, Laik;

    const-class v4, Laik;

    new-instance v5, Laqa;

    invoke-direct {v5}, Laqa;-><init>()V

    .line 225
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Laik;

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v5, Lasw;

    invoke-direct {v5, p4}, Lasw;-><init>(Lamd;)V

    .line 226
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    new-instance v3, Lasg;

    invoke-direct {v3}, Lasg;-><init>()V

    .line 228
    invoke-virtual {v2, v3}, Laht;->a(Laji;)Laht;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Laoi;

    invoke-direct {v5}, Laoi;-><init>()V

    .line 229
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laoo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Laoo;-><init>(B)V

    .line 230
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Lasj;

    invoke-direct {v5}, Lasj;-><init>()V

    .line 231
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lajb;)Laht;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Laoo;

    invoke-direct {v5}, Laoo;-><init>()V

    .line 232
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/io/File;

    const-class v4, Ljava/io/File;

    new-instance v5, Laqa;

    invoke-direct {v5}, Laqa;-><init>()V

    .line 233
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    new-instance v3, Lajs;

    iget-object v4, p0, Lahk;->i:Lamg;

    invoke-direct {v3, v4}, Lajs;-><init>(Lamg;)V

    .line 235
    invoke-virtual {v2, v3}, Laht;->a(Laji;)Laht;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lapu;

    invoke-direct {v5}, Lapu;-><init>()V

    .line 236
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lapt;

    invoke-direct {v5}, Lapt;-><init>()V

    .line 237
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lapu;

    invoke-direct {v5}, Lapu;-><init>()V

    .line 238
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lapt;

    invoke-direct {v5}, Lapt;-><init>()V

    .line 239
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laom;

    invoke-direct {v5}, Laom;-><init>()V

    .line 241
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lapy;

    invoke-direct {v5}, Lapy;-><init>()V

    .line 242
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lapx;

    invoke-direct {v5}, Lapx;-><init>()V

    .line 243
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laql;

    invoke-direct {v5}, Laql;-><init>()V

    .line 244
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Lanx;

    invoke-direct {v5}, Lanx;-><init>()V

    .line 245
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Lanw;

    invoke-direct {v5}, Lanw;-><init>()V

    .line 246
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqn;

    invoke-direct {v5}, Laqn;-><init>()V

    .line 247
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqp;

    invoke-direct {v5}, Laqp;-><init>()V

    .line 248
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqf;

    invoke-direct {v5}, Laqf;-><init>()V

    .line 249
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Landroid/os/ParcelFileDescriptor;

    new-instance v5, Laqd;

    invoke-direct {v5}, Laqd;-><init>()V

    .line 250
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqh;

    invoke-direct {v5}, Laqh;-><init>()V

    .line 251
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Ljava/net/URL;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqr;

    invoke-direct {v5}, Laqr;-><init>()V

    .line 252
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    const-class v4, Ljava/io/File;

    new-instance v5, Lapb;

    invoke-direct {v5}, Lapb;-><init>()V

    .line 253
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Laot;

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laqj;

    invoke-direct {v5}, Laqj;-><init>()V

    .line 254
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/nio/ByteBuffer;

    new-instance v5, Lanz;

    invoke-direct {v5}, Lanz;-><init>()V

    .line 255
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, [B

    const-class v4, Ljava/io/InputStream;

    new-instance v5, Laod;

    invoke-direct {v5}, Laod;-><init>()V

    .line 256
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Lapi;)Laht;

    move-result-object v2

    const-class v3, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Lasz;

    invoke-direct {v5, v1, p4}, Lasz;-><init>(Landroid/content/res/Resources;Lamd;)V

    .line 258
    invoke-virtual {v2, v3, v4, v5}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Latb;)Laht;

    move-result-object v1

    const-class v2, Landroid/graphics/Bitmap;

    const-class v3, [B

    new-instance v4, Lasy;

    invoke-direct {v4}, Lasy;-><init>()V

    .line 260
    invoke-virtual {v1, v2, v3, v4}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Latb;)Laht;

    move-result-object v1

    const-class v2, Lasn;

    const-class v3, [B

    new-instance v4, Lata;

    invoke-direct {v4}, Lata;-><init>()V

    .line 261
    invoke-virtual {v1, v2, v3, v4}, Laht;->a(Ljava/lang/Class;Ljava/lang/Class;Latb;)Laht;

    move-result-object v1

    iput-object v1, p0, Lahk;->g:Laht;

    .line 263
    new-instance v4, Laut;

    invoke-direct {v4}, Laut;-><init>()V

    .line 264
    new-instance v1, Lahm;

    iget-object v3, p0, Lahk;->g:Laht;

    move-object v2, p1

    move-object/from16 v5, p8

    move-object v6, p2

    move-object v7, p0

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lahm;-><init>(Landroid/content/Context;Laht;Laut;Lauk;Lalh;Landroid/content/ComponentCallbacks2;I)V

    iput-object v1, p0, Lahk;->f:Lahm;

    .line 266
    return-void
.end method

.method public static a(Landroid/content/Context;)Lahk;
    .locals 5

    .prologue
    .line 147
    sget-object v0, Lahk;->a:Lahk;

    if-nez v0, :cond_2

    .line 148
    const-class v1, Lahk;

    monitor-enter v1

    .line 149
    :try_start_0
    sget-object v0, Lahk;->a:Lahk;

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    new-instance v2, Latx;

    invoke-direct {v2, v0}, Latx;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Latx;->a()Ljava/util/List;

    move-result-object v2

    .line 153
    new-instance v3, Lahl;

    invoke-direct {v3, v0}, Lahl;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latw;

    .line 155
    invoke-interface {v0, v3}, Latw;->a(Lahl;)V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lahl;->a()Lahk;

    move-result-object v0

    sput-object v0, Lahk;->a:Lahk;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latw;

    .line 159
    sget-object v3, Lahk;->a:Lahk;

    iget-object v3, v3, Lahk;->g:Laht;

    invoke-interface {v0, v3}, Latw;->a(Laht;)V

    goto :goto_1

    .line 162
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_2
    sget-object v0, Lahk;->a:Lahk;

    return-object v0
.end method


# virtual methods
.method public a()Lamd;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lahk;->c:Lamd;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lavq;->a()V

    .line 360
    iget-object v0, p0, Lahk;->d:Lane;

    invoke-interface {v0, p1}, Lane;->a(I)V

    .line 361
    iget-object v0, p0, Lahk;->c:Lamd;

    invoke-interface {v0, p1}, Lamd;->a(I)V

    .line 362
    iget-object v0, p0, Lahk;->h:Laly;

    invoke-virtual {v0, p1}, Laly;->a(I)V

    .line 363
    return-void
.end method

.method a(Lahw;)V
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lahk;->k:Ljava/util/List;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lahk;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 493
    :cond_0
    :try_start_1
    iget-object v0, p0, Lahk;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method a(Lauw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lauw",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v1, p0, Lahk;->k:Ljava/util/List;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-object v0, p0, Lahk;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahw;

    .line 480
    invoke-virtual {v0, p1}, Lahw;->b(Lauw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    monitor-exit v1

    return-void

    .line 484
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to remove target from managers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lamg;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lahk;->i:Lamg;

    return-object v0
.end method

.method b(Lahw;)V
    .locals 3

    .prologue
    .line 498
    iget-object v1, p0, Lahk;->k:Ljava/util/List;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lahk;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 502
    :cond_0
    :try_start_1
    iget-object v0, p0, Lahk;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method c()Lati;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lahk;->j:Lati;

    return-object v0
.end method

.method d()Lahm;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lahk;->f:Lahm;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lavq;->a()V

    .line 346
    iget-object v0, p0, Lahk;->d:Lane;

    invoke-interface {v0}, Lane;->a()V

    .line 347
    iget-object v0, p0, Lahk;->c:Lamd;

    invoke-interface {v0}, Lamd;->a()V

    .line 348
    iget-object v0, p0, Lahk;->h:Laly;

    invoke-virtual {v0}, Laly;->a()V

    .line 349
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 518
    invoke-virtual {p0}, Lahk;->e()V

    .line 519
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Lahk;->a(I)V

    .line 509
    return-void
.end method
