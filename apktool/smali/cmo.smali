.class final Lcmo;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcml;


# direct methods
.method constructor <init>(Lcml;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcmo;->a:Lcml;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcmo;->a:Lcml;

    .line 3033
    iget-object v0, v0, Lcml;->g:Lkhf;

    .line 3198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcmo;->a:Lcml;

    .line 4033
    iget-object v0, v0, Lcml;->e:Lclq;

    .line 150
    iget-object v1, p0, Lcmo;->a:Lcml;

    .line 5033
    iget-object v1, v1, Lcml;->g:Lkhf;

    .line 150
    iget-object v1, v1, Lkhf;->k:Ljava/lang/Boolean;

    .line 6015
    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 150
    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcmo;->a:Lcml;

    sget-object v2, Lclq;->e:Lclq;

    .line 6033
    iput-object v2, v1, Lcml;->e:Lclq;

    .line 162
    :goto_0
    iget-object v1, p0, Lcmo;->a:Lcml;

    .line 14033
    iget-object v1, v1, Lcml;->e:Lclq;

    .line 162
    if-eq v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcmo;->a:Lcml;

    .line 15033
    iget-object v0, v0, Lcml;->d:Ljava/util/List;

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclo;

    .line 164
    iget-object v2, p0, Lcmo;->a:Lcml;

    .line 16033
    iget-object v2, v2, Lcml;->e:Lclq;

    .line 164
    invoke-interface {v0, v2, p1}, Lclo;->a(Lclq;Z)V

    goto :goto_1

    .line 152
    :cond_0
    iget-object v1, p0, Lcmo;->a:Lcml;

    .line 7033
    iget-object v1, v1, Lcml;->g:Lkhf;

    .line 152
    iget-object v1, v1, Lkhf;->u:Ljava/lang/Integer;

    .line 7043
    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 152
    if-ne v1, v3, :cond_1

    .line 153
    iget-object v1, p0, Lcmo;->a:Lcml;

    sget-object v2, Lclq;->d:Lclq;

    .line 8033
    iput-object v2, v1, Lcml;->e:Lclq;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcmo;->a:Lcml;

    .line 9033
    iget-object v1, v1, Lcml;->g:Lkhf;

    .line 154
    iget-object v1, v1, Lkhf;->w:Ljava/lang/Integer;

    .line 9043
    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 154
    if-ne v1, v3, :cond_2

    .line 155
    iget-object v1, p0, Lcmo;->a:Lcml;

    sget-object v2, Lclq;->c:Lclq;

    .line 10033
    iput-object v2, v1, Lcml;->e:Lclq;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcmo;->a:Lcml;

    .line 11033
    iget-object v1, v1, Lcml;->g:Lkhf;

    .line 156
    iget-object v1, v1, Lkhf;->b:Ljava/lang/Integer;

    .line 11043
    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 156
    if-ne v1, v3, :cond_3

    .line 157
    iget-object v1, p0, Lcmo;->a:Lcml;

    sget-object v2, Lclq;->b:Lclq;

    .line 12033
    iput-object v2, v1, Lcml;->e:Lclq;

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcmo;->a:Lcml;

    sget-object v2, Lclq;->a:Lclq;

    .line 13033
    iput-object v2, v1, Lcml;->e:Lclq;

    goto :goto_0

    .line 167
    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcmo;->a:Lcml;

    iget-object v0, p0, Lcmo;->a:Lcml;

    .line 1033
    iget-object v0, v0, Lcml;->f:Lhbf;

    .line 123
    invoke-interface {v0}, Lhbf;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkhf;

    .line 2033
    iput-object v0, v1, Lcml;->g:Lkhf;

    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcmo;->a(Z)V

    .line 125
    return-void
.end method

.method public synthetic a(Llyi;Llyi;)V
    .locals 1

    .prologue
    .line 120
    check-cast p2, Lkhf;

    .line 16129
    iget-object v0, p0, Lcmo;->a:Lcml;

    .line 17033
    iput-object p2, v0, Lcml;->g:Lkhf;

    .line 16130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcmo;->a(Z)V

    .line 120
    return-void
.end method
