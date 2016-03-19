.class final Lbpt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbpq;
.implements Lbrp;
.implements Lioo;
.implements Liow;
.implements Lioz;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbpr;

.field private c:Lbjb;

.field private d:Laxj;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lbeu;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbkq;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lbps;

.field private k:Lbrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbpr;Liog;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lbpt;->a:Landroid/content/Context;

    .line 59
    invoke-static {p2}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpr;

    iput-object v0, p0, Lbpt;->b:Lbpr;

    .line 60
    invoke-virtual {p3, p0}, Liog;->a(Lioz;)Lioz;

    .line 61
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lbpt;->k:Lbrl;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lbpt;->k:Lbrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbrl;->cancel(Z)Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lbpt;->k:Lbrl;

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lbjb;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lbpt;->c:Lbjb;

    return-object v0
.end method

.method public a(Lilh;)Lbpt;
    .locals 1

    .prologue
    .line 189
    const-class v0, Lbpq;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 190
    return-object p0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lbpt;->e:I

    .line 122
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;Lbps;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbkq;",
            ":",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Lbps;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    .line 166
    iput-object p3, p0, Lbpt;->j:Lbps;

    .line 167
    iget-object v0, p0, Lbpt;->b:Lbpr;

    invoke-interface {v0, p3}, Lbpr;->a(Lbps;)V

    .line 168
    invoke-direct {p0}, Lbpt;->j()V

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    .line 171
    iget-object v0, v0, Lbkq;->a:Ljava/lang/String;

    invoke-static {v0}, Laen;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lbrl;

    iget-object v1, p0, Lbpt;->i:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, p0}, Lbrl;-><init>(Landroid/content/Context;Ljava/util/List;Lbrp;)V

    iput-object v0, p0, Lbpt;->k:Lbrl;

    .line 175
    iget-object v0, p0, Lbpt;->k:Lbrl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "conversation_state_model_conversation_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbpt;->f:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lbpt;->a:Landroid/content/Context;

    const-string v0, "conversation_state_model_attachments"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v0, "conversation_state_model_callback"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbps;

    .line 69
    invoke-virtual {p0, v1, v2, v0}, Lbpt;->a(Landroid/content/Context;Ljava/util/List;Lbps;)V

    goto :goto_0
.end method

.method public a(Laxj;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lbpt;->d:Laxj;

    .line 100
    iget-object v0, p1, Laxj;->g:Ljava/lang/String;

    iput-object v0, p0, Lbpt;->f:Ljava/lang/String;

    .line 101
    iget v0, p1, Laxj;->b:I

    iput v0, p0, Lbpt;->e:I

    .line 102
    return-void
.end method

.method public a(Lbeu;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lbpt;->h:Lbeu;

    .line 143
    return-void
.end method

.method public a(Lbjb;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lbpt;->c:Lbjb;

    .line 90
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lbpt;->f:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lbpt;->g:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public a(Lksf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lksf",
            "<",
            "Lbkq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method public b()Laxj;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lbpt;->d:Laxj;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    const-string v0, "conversation_state_model_conversation_name"

    invoke-virtual {p0}, Lbpt;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkq;

    .line 81
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "conversation_state_model_attachments"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    const-string v0, "conversation_state_model_callback"

    iget-object v1, p0, Lbpt;->j:Lbps;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lbpt;->c:Lbjb;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lbpt;->c:Lbjb;

    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbpt;->d:Laxj;

    iget-object v0, v0, Laxj;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lbpt;->e:I

    return v0
.end method

.method public e()Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lbpt;->h:Lbeu;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lbpt;->a:Landroid/content/Context;

    const-class v1, Lazd;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 202
    iget-object v0, p0, Lbpt;->h:Lbeu;

    invoke-virtual {v0}, Lbeu;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyx;

    .line 203
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lazd;

    .line 204
    invoke-interface {v1}, Lazd;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcyx;->b:Lczb;

    iget-object v6, v6, Lczb;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-interface {v1}, Lazd;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbpt;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbpt;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbpt;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Lbeu;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lbpt;->h:Lbeu;

    return-object v0
.end method

.method public h()Lksf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lksf",
            "<",
            "Lbkq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lksf;->a(Ljava/util/Collection;)Lksf;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpt;->i:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lbpt;->b:Lbpr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbpr;->a(Lbps;)V

    .line 185
    invoke-direct {p0}, Lbpt;->j()V

    .line 186
    return-void
.end method
