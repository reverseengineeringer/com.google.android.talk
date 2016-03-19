.class public final Ldyo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldyr;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Ldyo;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Ldyo;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldtw;Laxn;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public a(Ldtw;Laxt;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p2}, Laxt;->d()Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {p2}, Laxt;->g()Ljava/lang/String;

    move-result-object v7

    .line 118
    iget-object v0, p1, Ldtw;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1034
    if-nez v4, :cond_0

    move-object v5, v2

    .line 122
    :goto_0
    iget-object v0, p1, Ldtw;->a:Ljava/lang/String;

    iget-object v1, p1, Ldtw;->b:Ljava/lang/String;

    iget-object v3, p1, Ldtw;->d:Ljava/lang/String;

    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Ldtw;->e:Ljava/lang/String;

    :goto_1
    move-object v8, v2

    move-object v9, v2

    .line 122
    invoke-static/range {v0 .. v9}, Laal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcyx;

    move-result-object v0

    .line 126
    invoke-virtual {p2}, Laxt;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcyx;->C:Ljava/lang/String;

    .line 127
    invoke-virtual {p2}, Laxt;->j()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcyx;->B:Ljava/util/List;

    .line 128
    invoke-virtual {p2}, Laxt;->k()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcyx;->A:Ljava/util/List;

    .line 129
    iget-object v1, p0, Ldyo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_2
    return-void

    .line 1038
    :cond_0
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1039
    array-length v1, v0

    if-lez v1, :cond_3

    .line 1040
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_3
    move-object v5, v0

    .line 1042
    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 124
    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Ldyo;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ldyo;->b:Landroid/content/Context;

    iget-object v2, p1, Ldtw;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcyx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_3
.end method
