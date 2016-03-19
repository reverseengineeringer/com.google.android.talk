.class final Lcyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcyh;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcyo;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcyo;->b:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private a(IZLjava/util/EnumSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/EnumSet",
            "<",
            "Lcyq;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4037
    sget-object v6, Lkmm;->a:Lkmm;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    .line 100
    invoke-direct/range {v0 .. v6}, Lcyo;->a(IZLjava/util/EnumSet;ZZLknq;)V

    .line 107
    return-void
.end method

.method private a(IZLjava/util/EnumSet;ZZLknq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/EnumSet",
            "<",
            "Lcyq;",
            ">;ZZ",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v0, Lcyo;->a:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RealTimeChatNotificationsImpl.update silent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    const-class v1, Lekq;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    invoke-virtual {v0, p1}, Lekq;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-direct {p0, p1}, Lcyo;->f(I)V

    .line 126
    invoke-direct {p0, p1}, Lcyo;->g(I)V

    .line 137
    :cond_1
    :goto_0
    sget-object v0, Lcyq;->c:Lcyq;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    new-instance v1, Lcxe;

    invoke-direct {v1}, Lcxe;-><init>()V

    iget-object v2, p0, Lcyo;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcxe;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    :cond_2
    return-void

    .line 128
    :cond_3
    sget-object v0, Lcyq;->a:Lcyq;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    new-instance v0, Lcxw;

    invoke-direct {v0}, Lcxw;-><init>()V

    iget-object v1, p0, Lcyo;->b:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcxw;->a(Landroid/content/Context;IZZZLknq;)V

    .line 133
    :cond_4
    sget-object v0, Lcyq;->b:Lcyq;

    invoke-virtual {p3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Lcxl;

    invoke-direct {v0}, Lcxl;-><init>()V

    iget-object v1, p0, Lcyo;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p6}, Lcxl;->a(Landroid/content/Context;IZLknq;)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcxt;->a(Landroid/content/Context;I)V

    .line 255
    return-void
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcxj;->a(Landroid/content/Context;I)V

    .line 259
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x1

    sget-object v1, Lcyq;->a:Lcyq;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcyo;->a(IZLjava/util/EnumSet;)V

    .line 208
    return-void
.end method

.method public a(ILdza;)V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 5037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 151
    invoke-virtual {p0, p1, p2, v0, v1}, Lcyo;->a(ILdza;ZLknq;)V

    .line 157
    return-void
.end method

.method public a(ILdza;ZLknq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 167
    sget-object v0, Lcyp;->a:[I

    invoke-virtual {p2}, Ldza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x93a

    .line 169
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 184
    :pswitch_1
    const/4 v2, 0x1

    const-class v0, Lcyq;

    .line 187
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v4, p3

    move-object v6, p4

    .line 184
    invoke-direct/range {v0 .. v6}, Lcyo;->a(IZLjava/util/EnumSet;ZZLknq;)V

    goto :goto_0

    .line 193
    :pswitch_2
    const-class v0, Lcyq;

    .line 196
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v3, p0

    move v4, p1

    move v7, p3

    move v8, v5

    move-object v9, p4

    .line 193
    invoke-direct/range {v3 .. v9}, Lcyo;->a(IZLjava/util/EnumSet;ZZLknq;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    new-instance v1, Lcxv;

    invoke-direct {v1}, Lcxv;-><init>()V

    iget-object v2, p0, Lcyo;->b:Landroid/content/Context;

    .line 232
    invoke-virtual {v1, v2, p1, p2}, Lcxv;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v1, 0xa

    .line 1219
    new-instance v5, Lcsn;

    .line 2040
    invoke-direct {v5}, Lcsn;-><init>()V

    .line 81
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    const-class v6, Lekq;

    .line 83
    invoke-static {v0, v6}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    invoke-virtual {v0, p1}, Lekq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/16 v0, 0x1c6

    .line 82
    :goto_0
    invoke-virtual {v5, v0}, Lcsn;->a(I)Lcsn;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p2}, Lcsn;->c(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p3}, Lcsn;->a(Ljava/lang/String;)Lcsn;

    move-result-object v0

    .line 77
    invoke-static {p1, v2, v3, v1, v0}, Laen;->a(IJILcsn;)V

    .line 89
    const/4 v2, 0x0

    const-class v0, Lcyq;

    .line 92
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 3037
    sget-object v6, Lkmm;->a:Lkmm;

    move-object v0, p0

    move v1, p1

    move v5, v4

    .line 89
    invoke-direct/range {v0 .. v6}, Lcyo;->a(IZLjava/util/EnumSet;ZZLknq;)V

    .line 96
    return-void

    .line 85
    :cond_0
    const/16 v0, 0x1c7

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcyq;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcyo;->a(IZLjava/util/EnumSet;)V

    .line 146
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcwu;

    invoke-direct {v0}, Lcwu;-><init>()V

    iget-object v1, p0, Lcyo;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcwu;->a(Landroid/content/Context;I)V

    .line 214
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    new-instance v1, Lcxk;

    invoke-direct {v1}, Lcxk;-><init>()V

    iget-object v2, p0, Lcyo;->b:Landroid/content/Context;

    .line 239
    invoke-virtual {v1, v2, p1, p2}, Lcxk;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x1

    sget-object v1, Lcyq;->c:Lcyq;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcyo;->a(IZLjava/util/EnumSet;)V

    .line 220
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    new-instance v1, Lcxd;

    invoke-direct {v1}, Lcxd;-><init>()V

    iget-object v2, p0, Lcyo;->b:Landroid/content/Context;

    .line 246
    invoke-virtual {v1, v2, p1, p2}, Lcxd;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, v0}, Lcyo;->a(ILjava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1, v0}, Lcyo;->b(ILjava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1, v0}, Lcyo;->c(ILjava/lang/String;)V

    .line 227
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcyo;->g(I)V

    .line 263
    invoke-direct {p0, p1}, Lcyo;->f(I)V

    .line 5250
    iget-object v0, p0, Lcyo;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcxb;->a(Landroid/content/Context;I)V

    .line 265
    return-void
.end method
