.class final Lcej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lceh;
.implements Lioz;


# static fields
.field static final a:Lezv;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field b:Landroid/content/Context;

.field private d:Lahw;

.field private e:Z

.field private f:Lhpu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "GlideLoaderManagerImpl"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lcej;->a:Lezv;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcej;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct {p0, p1}, Lcej;->a(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Liog;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 84
    iput-object p1, p0, Lcej;->b:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcej;->a(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private a(Ljava/lang/String;)Lauj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lauj",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcek;

    invoke-direct {v0, p0, p1}, Lcek;-><init>(Lcej;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    const-class v0, Lahw;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahw;

    iput-object v0, p0, Lcej;->d:Lahw;

    .line 199
    const-class v0, Lhpu;

    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcej;->f:Lhpu;

    .line 200
    const-class v0, Lceg;

    .line 201
    invoke-static {p1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceg;

    .line 202
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcej;->e:Z

    .line 203
    iget-boolean v0, p0, Lcej;->e:Z

    if-nez v0, :cond_0

    .line 204
    const-string v0, "babel_glide_enabled"

    .line 205
    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcej;->e:Z

    .line 208
    :cond_0
    iput-object p1, p0, Lcej;->b:Landroid/content/Context;

    .line 209
    return-void

    :cond_1
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "content"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 177
    const-string v1, "https:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object p0, v0

    .line 179
    :cond_0
    return-object p0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/widget/ImageView;Lave;Lauk;)V
    .locals 5

    .prologue
    .line 95
    if-eqz p3, :cond_0

    .line 96
    invoke-virtual {p4, p3}, Lauk;->a(Laiw;)Laug;

    .line 1114
    :cond_0
    sget-object v0, Lcej;->a:Lezv;

    const-string v1, "loadImageWithGlide_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcej;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    iget-object v1, p0, Lcej;->d:Lahw;

    .line 1116
    invoke-virtual {v1}, Lahw;->h()Lahu;

    move-result-object v1

    .line 1117
    invoke-virtual {v1, p4}, Lahu;->a(Laug;)Lahu;

    move-result-object v1

    .line 1118
    invoke-virtual {v1, p1}, Lahu;->a(Landroid/net/Uri;)Lahu;

    move-result-object v1

    .line 1119
    invoke-direct {p0, v0}, Lcej;->a(Ljava/lang/String;)Lauj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lahu;->a(Lauj;)Lahu;

    move-result-object v0

    .line 1120
    invoke-virtual {v0, p2}, Lahu;->a(Landroid/widget/ImageView;)Lauw;

    .line 99
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcej;->d:Lahw;

    invoke-virtual {v0, p1}, Lahw;->a(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lauk;)V
    .locals 5

    .prologue
    .line 103
    sget-object v0, Lcej;->a:Lezv;

    const-string v1, "loadImageWithGlide_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcej;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcej;->d:Lahw;

    .line 105
    invoke-virtual {v1}, Lahw;->h()Lahu;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p3}, Lahu;->a(Laug;)Lahu;

    move-result-object v1

    .line 107
    invoke-virtual {v1, p1}, Lahu;->a(Ljava/lang/String;)Lahu;

    move-result-object v1

    .line 108
    invoke-direct {p0, v0}, Lcej;->a(Ljava/lang/String;)Lauj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lahu;->a(Lauj;)Lahu;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p2}, Lahu;->a(Landroid/widget/ImageView;)Lauw;

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;Lauw;Lauk;Lhav;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lauw",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lauk;",
            "Lhav;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lcej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lcej;->f:Lhpu;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcej;->f:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 137
    :goto_0
    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 138
    iget-object v2, p0, Lcej;->d:Lahw;

    .line 139
    invoke-virtual {v2}, Lahw;->g()Lahu;

    move-result-object v2

    .line 140
    invoke-virtual {v2, p3}, Lahu;->a(Laug;)Lahu;

    move-result-object v2

    new-instance v3, Lham;

    invoke-direct {v3, v1, p4, v0}, Lham;-><init>(Ljava/lang/String;Lhav;I)V

    .line 141
    invoke-virtual {v2, v3}, Lahu;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p2}, Lahu;->a(Lauw;)Lauw;

    .line 146
    :goto_1
    return-void

    .line 134
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcej;->d:Lahw;

    invoke-virtual {v0}, Lahw;->g()Lahu;

    move-result-object v0

    invoke-virtual {v0, p3}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lahu;->a(Ljava/lang/String;)Lahu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lahu;->a(Lauw;)Lauw;

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcej;->e:Z

    return v0
.end method

.method public b(Ljava/lang/String;Lauw;Lauk;Lhav;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lauw",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lauk;",
            "Lhav;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {p1}, Lcej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v0, p0, Lcej;->f:Lhpu;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcej;->f:Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 162
    :goto_0
    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 163
    iget-object v2, p0, Lcej;->d:Lahw;

    .line 164
    invoke-virtual {v2}, Lahw;->h()Lahu;

    move-result-object v2

    .line 165
    invoke-virtual {v2, p3}, Lahu;->a(Laug;)Lahu;

    move-result-object v2

    new-instance v3, Lham;

    invoke-direct {v3, v1, p4, v0}, Lham;-><init>(Ljava/lang/String;Lhav;I)V

    .line 166
    invoke-virtual {v2, v3}, Lahu;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p2}, Lahu;->a(Lauw;)Lauw;

    .line 171
    :goto_1
    return-void

    .line 159
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcej;->d:Lahw;

    invoke-virtual {v0}, Lahw;->h()Lahu;

    move-result-object v0

    invoke-virtual {v0, p3}, Lahu;->a(Laug;)Lahu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lahu;->a(Ljava/lang/String;)Lahu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lahu;->a(Lauw;)Lauw;

    goto :goto_1
.end method
