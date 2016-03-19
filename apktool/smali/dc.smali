.class Ldc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcy;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 1478
    iget-object v0, p1, Lcy;->B:Landroid/app/Notification;

    .line 1479
    iget-object v1, p1, Lcy;->a:Landroid/content/Context;

    iget-object v2, p1, Lcy;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcy;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcy;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1482
    iget v1, p1, Lcy;->j:I

    if-lez v1, :cond_0

    .line 1483
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1485
    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x0

    return-object v0
.end method

.method public a([Lcu;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcu;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    const/4 v0, 0x0

    return-object v0
.end method
