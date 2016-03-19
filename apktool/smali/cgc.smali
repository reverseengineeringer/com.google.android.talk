.class public final Lcgc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcgm;
.implements Lck;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcgm;",
        "Lck",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private final b:Lcfc;

.field private c:Lcgd;

.field private d:Landroid/content/Context;

.field private e:Lchc;

.field private f:Lbfd;

.field private g:Lcgn;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbfd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iput-object v0, p0, Lcgc;->b:Lcfc;

    .line 63
    iput-object p1, p0, Lcgc;->d:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcgc;->f:Lbfd;

    .line 65
    iput-object p3, p0, Lcgc;->a:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcgc;->h:Ljava/lang/String;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcgc;->e:Lchc;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcgc;->e:Lchc;

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcgc;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->cu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Lchc;->a(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcgc;->e:Lchc;

    invoke-virtual {v0, p2}, Lchc;->b(Ljava/lang/String;)V

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public a(Lcgn;)V
    .locals 3

    .prologue
    .line 71
    iput-object p1, p0, Lcgc;->g:Lcgn;

    .line 72
    new-instance v0, Lcgd;

    .line 1031
    invoke-direct {v0, p0}, Lcgd;-><init>(Lcgc;)V

    .line 72
    iput-object v0, p0, Lcgc;->c:Lcgd;

    .line 73
    iget-object v0, p0, Lcgc;->b:Lcfc;

    iget-object v1, p0, Lcgc;->c:Lcgd;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 74
    iget-object v0, p0, Lcgc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcgn;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcj;->a(ILandroid/os/Bundle;Lck;)Lfe;

    .line 79
    :cond_0
    iget-object v0, p0, Lcgc;->c:Lcgd;

    invoke-virtual {v0}, Lcgd;->f()V

    .line 80
    return-void
.end method

.method public a(Lqe;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Lqe;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchc;

    iput-object v0, p0, Lcgc;->e:Lchc;

    .line 84
    iget-object v0, p0, Lcgc;->e:Lchc;

    iget-object v1, p0, Lcgc;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->cu:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchc;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcgc;->c()V

    .line 86
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcgc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcgc;->g:Lcgn;

    .line 113
    invoke-virtual {v0}, Lcgn;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2, p0}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    .line 116
    :cond_0
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcgc;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcgc;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 159
    iget-object v0, p0, Lcgc;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :goto_0
    return-void

    .line 160
    :cond_0
    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {v0}, Lcgw;->J()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    invoke-virtual {v0}, Lcgw;->T()Ljava/util/List;

    move-result-object v0

    .line 1177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 1178
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchb;

    .line 1181
    invoke-virtual {v0}, Lchb;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1182
    invoke-virtual {v0}, Lchb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1183
    invoke-virtual {v0}, Lchb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    :goto_1
    if-eqz v1, :cond_2

    .line 1190
    invoke-direct {p0, v1, v0}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1185
    :cond_1
    invoke-virtual {v0}, Lchb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 1192
    :cond_2
    invoke-virtual {p0}, Lcgc;->b()V

    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcgc;->b()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lfe;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 90
    if-eqz p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v7

    .line 93
    :cond_1
    iget-object v0, p0, Lcgc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 96
    const-string v5, "conversation_id=?"

    .line 97
    new-instance v0, Ldhq;

    iget-object v1, p0, Lcgc;->d:Landroid/content/Context;

    iget-object v2, p0, Lcgc;->f:Lbfd;

    sget-object v3, Lcom/google/android/apps/hangouts/content/EsProvider;->h:Landroid/net/Uri;

    iget-object v4, p0, Lcgc;->g:Lcgn;

    .line 102
    invoke-virtual {v4}, Lcgn;->a()Lbfd;

    move-result-object v4

    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    .line 101
    invoke-static {v3, v4}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lbey;->a:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcgc;->a:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-direct/range {v0 .. v7}, Ldhq;-><init>(Landroid/content/Context;Lbfd;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 107
    goto :goto_0
.end method

.method public synthetic onLoadFinished(Lfe;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    check-cast p2, Landroid/database/Cursor;

    .line 2120
    invoke-virtual {p1}, Lfe;->o()I

    move-result v0

    if-nez v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcgc;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    .line 2126
    if-eqz v0, :cond_0

    .line 2127
    invoke-virtual {v0}, Lcgw;->J()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2132
    :cond_0
    iget-object v0, p0, Lcgc;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2133
    iget-object v0, p0, Lcgc;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    :cond_1
    :goto_0
    return-void

    .line 2137
    :cond_2
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2140
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2142
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2143
    invoke-direct {p0, v0, v2}, Lcgc;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoaderReset(Lfe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    return-void
.end method

.method public r_()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcgc;->c:Lcgd;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcgc;->b:Lcfc;

    iget-object v1, p0, Lcgc;->c:Lcgd;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcgc;->c:Lcgd;

    .line 154
    :cond_0
    return-void
.end method
