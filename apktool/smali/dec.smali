.class public final Ldec;
.super Lfe;
.source "SourceFile"

# interfaces
.implements Lacn;
.implements Lbhv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe",
        "<",
        "Laco;",
        ">;",
        "Lacn;",
        "Lbhv;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Random;


# instance fields
.field private final b:Lbfd;

.field private final c:I

.field private d:Leyd;

.field private e:Lbhs;

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ldec;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILbfd;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lfe;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Ldec;->f:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Ldec;->b:Lbfd;

    .line 48
    iput p3, p0, Ldec;->c:I

    .line 49
    iget v0, p0, Ldec;->c:I

    invoke-direct {p0, p2, v0}, Ldec;->a(Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method private a(Laco;)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Ldec;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Ldec;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-super {p0, p1}, Lfe;->b(Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    iget-object v2, p0, Ldec;->f:Landroid/content/Context;

    iget-object v3, p0, Ldec;->b:Lbfd;

    .line 1073
    const/4 v0, -0x1

    .line 1074
    packed-switch p2, :pswitch_data_0

    .line 1103
    :goto_0
    new-instance v1, Leyd;

    .line 1104
    invoke-virtual {v3}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Leyd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v1, v0, v0}, Leyd;->a(II)Leyd;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, v5}, Leyd;->a(Z)Leyd;

    move-result-object v0

    .line 1107
    invoke-virtual {v0, v5}, Leyd;->d(Z)Leyd;

    move-result-object v0

    .line 1108
    if-ne p2, v6, :cond_0

    .line 1109
    invoke-virtual {v0, v6}, Leyd;->b(Z)Leyd;

    .line 58
    :cond_0
    iput-object v0, p0, Ldec;->d:Leyd;

    .line 59
    new-instance v0, Lbhs;

    iget-object v1, p0, Ldec;->d:Leyd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v6, v2}, Lbhs;-><init>(Leyd;Lbhv;ZLjava/lang/Object;)V

    iput-object v0, p0, Ldec;->e:Lbhs;

    .line 60
    return-void

    .line 1076
    :pswitch_0
    invoke-static {v2}, Lbfq;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 1081
    :pswitch_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->dN:I

    .line 1082
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1091
    :pswitch_2
    sget v0, Labn;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2043
    invoke-static {v0, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1093
    const-class v0, Lbdp;

    invoke-static {v2, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 1094
    const-string v2, "babel_pull_image_resolution_var_range"

    const/16 v4, 0x32

    .line 1095
    invoke-interface {v0, v2, v4}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1098
    if-lez v0, :cond_1

    .line 1099
    sget-object v2, Ldec;->a:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Ldec;->e:Lbhs;

    if-ne p4, v0, :cond_3

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Ldec;->e:Lbhs;

    .line 142
    new-instance v0, Laco;

    invoke-direct {v0}, Laco;-><init>()V

    .line 143
    if-eqz p3, :cond_2

    .line 144
    const/4 v1, 0x0

    iput v1, v0, Laco;->c:I

    .line 145
    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p2}, Lexs;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    new-instance v1, Lfcd;

    invoke-direct {v1, p2}, Lfcd;-><init>(Lexs;)V

    iput-object v1, v0, Laco;->a:Landroid/graphics/drawable/Drawable;

    .line 165
    :goto_0
    invoke-direct {p0, v0}, Ldec;->a(Laco;)V

    .line 173
    :cond_0
    :goto_1
    return-void

    .line 2198
    :cond_1
    const-string v1, "Expected non-null"

    invoke-static {v1, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Leys;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3198
    const-string v2, "Expected non-null"

    invoke-static {v2, v1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 156
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Ldec;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v0, Laco;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, 0x1

    iput v1, v0, Laco;->c:I

    goto :goto_0

    .line 169
    :cond_3
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Leys;->b()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Ldec;->c:I

    invoke-direct {p0, p1, v0}, Ldec;->a(Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Laco;

    invoke-direct {p0, p1}, Ldec;->a(Laco;)V

    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Ldec;->n()Landroid/content/Context;

    move-result-object v0

    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Ldec;->e:Lbhs;

    invoke-virtual {v0, v1}, Leit;->a(Lehx;)Z

    .line 118
    return-void
.end method
