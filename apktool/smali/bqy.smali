.class final Lbqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccb;
.implements Lioo;
.implements Liow;
.implements Lioz;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbfd;

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Lbqz;

.field private final h:Lbvg;


# direct methods
.method constructor <init>(Landroid/content/Context;Lbfd;Liog;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lbqy;->c:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lbqy;->d:I

    .line 48
    iput-wide v2, p0, Lbqy;->e:J

    .line 49
    iput-wide v2, p0, Lbqy;->f:J

    .line 76
    iput-object p1, p0, Lbqy;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lbqy;->b:Lbfd;

    .line 78
    invoke-virtual {p3, p0}, Liog;->a(Lioz;)Lioz;

    .line 79
    const-class v0, Lbqz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbqz;

    iput-object v0, p0, Lbqy;->g:Lbqz;

    .line 80
    const-class v0, Lbvg;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvg;

    iput-object v0, p0, Lbqy;->h:Lbvg;

    .line 81
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lbqy;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1140
    iget-object v0, p0, Lbqy;->b:Lbfd;

    .line 1142
    invoke-virtual {v0}, Lbfd;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->iC:I

    .line 1144
    :goto_0
    const/4 v1, 0x0

    .line 1140
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    :goto_1
    return-void

    .line 1144
    :cond_0
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->iB:I

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lbqy;->h:Lbvg;

    iget-object v1, p0, Lbqy;->b:Lbfd;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1, p3, p2}, Lbvg;->a(ILjava/lang/String;I)V

    goto :goto_1
.end method


# virtual methods
.method a(J)V
    .locals 5

    .prologue
    .line 168
    iget-wide v0, p0, Lbqy;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 169
    iput-wide p1, p0, Lbqy;->e:J

    .line 171
    :cond_0
    return-void
.end method

.method a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lbqy;->c:I

    .line 163
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lbqy;->d:I

    .line 164
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string v0, "key_last_compose_time_ms"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbqy;->e:J

    .line 61
    const-string v0, "key_otr_on_timestamp_ms"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbqy;->f:J

    .line 63
    :cond_0
    return-void
.end method

.method a(Landroid/view/Menu;ZZ)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    sget v0, Laen;->fw:I

    .line 101
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 102
    sget v0, Laen;->fx:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 103
    iget-object v0, p0, Lbqy;->a:Landroid/content/Context;

    iget-object v3, p0, Lbqy;->b:Lbfd;

    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    .line 1108
    const-class v4, Lbhj;

    .line 1109
    invoke-static {v0, v4}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhj;

    .line 1112
    invoke-interface {v0, v3}, Lbhj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 103
    :goto_0
    if-eqz v0, :cond_6

    .line 104
    iget v0, p0, Lbqy;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 107
    :goto_1
    iget v3, p0, Lbqy;->c:I

    if-ne v3, v1, :cond_3

    if-nez p2, :cond_3

    move v4, v1

    .line 111
    :goto_2
    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    if-eqz v4, :cond_5

    if-nez p3, :cond_5

    :goto_4
    invoke-interface {v6, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 119
    :goto_5
    return-void

    :cond_1
    move v0, v1

    .line 1117
    goto :goto_0

    :cond_2
    move v0, v2

    .line 104
    goto :goto_1

    :cond_3
    move v4, v2

    .line 107
    goto :goto_2

    :cond_4
    move v3, v2

    .line 111
    goto :goto_3

    :cond_5
    move v1, v2

    .line 113
    goto :goto_4

    .line 116
    :cond_6
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 117
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lbqy;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Laen;->fw:I

    if-ne v1, v2, :cond_0

    .line 124
    invoke-direct {p0, p1, v0, p3}, Lbqy;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Laen;->fx:I

    if-ne v1, v2, :cond_1

    .line 127
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, p3}, Lbqy;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lbg;)Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 186
    iget-wide v0, p0, Lbqy;->e:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbqy;->f:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbqy;->f:J

    iget-wide v2, p0, Lbqy;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lbqy;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lbqx;->a(Landroid/content/Context;Lbg;)V

    .line 190
    iput-wide v4, p0, Lbqy;->f:J

    .line 191
    iput-wide v4, p0, Lbqy;->e:J

    .line 192
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 194
    :cond_0
    iput-wide v4, p0, Lbqy;->e:J

    .line 195
    iput-wide v4, p0, Lbqy;->f:J

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(J)V
    .locals 3

    .prologue
    .line 176
    iget-wide v0, p0, Lbqy;->f:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 177
    iput-wide p1, p0, Lbqy;->f:J

    .line 179
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 53
    const-string v0, "key_last_compose_time_ms"

    iget-wide v2, p0, Lbqy;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 54
    const-string v0, "key_otr_on_timestamp_ms"

    iget-wide v2, p0, Lbqy;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbqy;->b:Lbfd;

    invoke-virtual {v0}, Lbfd;->m()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbqy;->g:Lbqz;

    invoke-interface {v0}, Lbqz;->u()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lbqy;->c:I

    return v0
.end method
