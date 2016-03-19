.class public final Lcy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Landroid/app/Notification;

.field public B:Landroid/app/Notification;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Ldk;

.field public n:Ljava/lang/CharSequence;

.field o:I

.field p:I

.field q:Z

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcu;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Ljava/lang/String;

.field x:Landroid/os/Bundle;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy;->k:Z

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcy;->u:Ljava/util/ArrayList;

    .line 913
    iput-boolean v4, p0, Lcy;->v:Z

    .line 916
    iput v4, p0, Lcy;->y:I

    .line 917
    iput v4, p0, Lcy;->z:I

    .line 921
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcy;->B:Landroid/app/Notification;

    .line 936
    iput-object p1, p0, Lcy;->a:Landroid/content/Context;

    .line 939
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 940
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 941
    iput v4, p0, Lcy;->j:I

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcy;->C:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1291
    if-eqz p2, :cond_0

    .line 1292
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1572
    if-nez p0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object p0

    .line 1573
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcy;
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy;->k:Z

    .line 960
    return-object p0
.end method

.method public a(I)Lcy;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 988
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcy;
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcy;->u:Ljava/util/ArrayList;

    new-instance v1, Lcu;

    invoke-direct {v1, p1, p2, p3}, Lcu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    return-object p0
.end method

.method public a(J)Lcy;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 951
    return-object p0
.end method

.method public a(Landroid/app/Notification;)Lcy;
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lcy;->A:Landroid/app/Notification;

    .line 1536
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Lcy;
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcy;->d:Landroid/app/PendingIntent;

    .line 1084
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcy;
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcy;->g:Landroid/graphics/Bitmap;

    .line 1148
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcy;
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1161
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1162
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lcy;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    .line 1407
    :goto_0
    return-object p0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcu;)Lcy;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcy;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    return-object p0
.end method

.method public a(Lda;)Lcy;
    .locals 0

    .prologue
    .line 1544
    invoke-interface {p1, p0}, Lda;->a(Lcy;)Lcy;

    .line 1545
    return-object p0
.end method

.method public a(Ldk;)Lcy;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcy;->m:Ldk;

    if-eq v0, p1, :cond_0

    .line 1494
    iput-object p1, p0, Lcy;->m:Ldk;

    .line 1495
    iget-object v0, p0, Lcy;->m:Ldk;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcy;->m:Ldk;

    invoke-virtual {v0, p0}, Ldk;->a(Lcy;)V

    .line 1499
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcy;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcy;->b:Ljava/lang/CharSequence;

    .line 1012
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcy;
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Lcy;->w:Ljava/lang/String;

    .line 1269
    return-object p0
.end method

.method public a(Z)Lcy;
    .locals 1

    .prologue
    .line 1245
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcy;->a(IZ)V

    .line 1246
    return-object p0
.end method

.method public a([J)Lcy;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1195
    return-object p0
.end method

.method public b()Lcy;
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy;->l:Z

    .line 976
    return-object p0
.end method

.method public b(I)Lcy;
    .locals 0

    .prologue
    .line 1043
    iput p1, p0, Lcy;->i:I

    .line 1044
    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Lcy;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1096
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcy;
    .locals 1

    .prologue
    .line 1019
    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcy;->c:Ljava/lang/CharSequence;

    .line 1020
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcy;
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lcy;->r:Ljava/lang/String;

    .line 1360
    return-object p0
.end method

.method public c()Lcy;
    .locals 2

    .prologue
    .line 1225
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcy;->a(IZ)V

    .line 1226
    return-object p0
.end method

.method public c(I)Lcy;
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1284
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1287
    :cond_0
    return-object p0
.end method

.method public c(Landroid/app/PendingIntent;)Lcy;
    .locals 2

    .prologue
    .line 1118
    iput-object p1, p0, Lcy;->e:Landroid/app/PendingIntent;

    .line 1119
    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcy;->a(IZ)V

    .line 1120
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcy;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcy;->B:Landroid/app/Notification;

    invoke-static {p1}, Lcy;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1129
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcy;
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lcy;->t:Ljava/lang/String;

    .line 1389
    return-object p0
.end method

.method public d()Lcy;
    .locals 2

    .prologue
    .line 1234
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcy;->a(IZ)V

    .line 1235
    return-object p0
.end method

.method public d(I)Lcy;
    .locals 0

    .prologue
    .line 1316
    iput p1, p0, Lcy;->j:I

    .line 1317
    return-object p0
.end method

.method public e()Lcy;
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcy;->s:Z

    .line 1372
    return-object p0
.end method

.method public e(I)Lcy;
    .locals 0

    .prologue
    .line 1510
    iput p1, p0, Lcy;->y:I

    .line 1511
    return-object p0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1439
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    .line 1441
    :cond_0
    iget-object v0, p0, Lcy;->x:Landroid/os/Bundle;

    return-object v0
.end method

.method public g()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 2042
    sget-object v0, Lct;->a:Ldc;

    .line 2568
    new-instance v1, Lcz;

    invoke-direct {v1}, Lcz;-><init>()V

    .line 1561
    invoke-virtual {v0, p0}, Ldc;->a(Lcy;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
