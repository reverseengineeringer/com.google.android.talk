.class public Lhie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Resource:",
        "Llyi;",
        "AddRequest:",
        "Llyi;",
        "AddResponse:",
        "Llyi;",
        "ModifyRequest:",
        "Llyi;",
        "ModifyResponse:",
        "Llyi;",
        "RemoveRequest:",
        "Llyi;",
        "RemoveResponse:",
        "Llyi;",
        ">",
        "Ljava/lang/Object;",
        "Lhbm",
        "<TResource;TAddRequest;TAddResponse;TModifyRequest;TModifyResponse;TRemoveRequest;TRemoveResponse;>;"
    }
.end annotation


# instance fields
.field final a_:Lhhr;

.field final b:Lhhm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhhm",
            "<TAddResponse;TModifyResponse;TRemoveRequest;TRemoveResponse;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TResource;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhbn",
            "<TResource;>;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field private final f:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<TResource;>;"
        }
    .end annotation
.end field

.field private final g:Lhhn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhhn",
            "<TAddRequest;TAddResponse;TModifyRequest;TModifyResponse;TRemoveRequest;TRemoveResponse;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhhr;Lhbq;Lhhn;Lhhm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhhr;",
            "Lhbq",
            "<TResource;>;",
            "Lhhn",
            "<TAddRequest;TAddResponse;TModifyRequest;TModifyResponse;TRemoveRequest;TRemoveResponse;>;",
            "Lhhm",
            "<TAddResponse;TModifyResponse;TRemoveRequest;TRemoveResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lhie;->a_:Lhhr;

    .line 63
    iput-object p2, p0, Lhie;->f:Lhbq;

    .line 64
    iput-object p3, p0, Lhie;->g:Lhhn;

    .line 65
    iput-object p4, p0, Lhie;->b:Lhhm;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhie;->e:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhie;->c:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhie;->d:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public a(ILlyi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITResource;)V"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lhbs;->a()V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 202
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lhie;->c:Ljava/util/Map;

    iget-object v1, p0, Lhie;->f:Lhbq;

    invoke-interface {v1, p2}, Lhbq;->a(Llyi;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbn;

    .line 179
    invoke-virtual {v0, p2}, Lhbn;->a(Llyi;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lhie;->c:Ljava/util/Map;

    iget-object v1, p0, Lhie;->f:Lhbq;

    invoke-interface {v1, p2}, Lhbq;->a(Llyi;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llyi;

    .line 1198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhbn;

    .line 186
    invoke-virtual {v1, v0, p2}, Lhbn;->a(Llyi;Llyi;)V

    goto :goto_1

    .line 190
    :pswitch_2
    iget-object v0, p0, Lhie;->c:Ljava/util/Map;

    iget-object v1, p0, Lhie;->f:Lhbq;

    invoke-interface {v1, p2}, Lhbq;->a(Llyi;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbn;

    .line 192
    invoke-virtual {v0, p2}, Lhbn;->b(Llyi;)V

    goto :goto_2

    .line 196
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhie;->e:Z

    .line 197
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbn;

    .line 198
    invoke-virtual {v0}, Lhbn;->a()V

    goto :goto_3

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lhbn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbn",
            "<TResource;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lhbs;->a()V

    .line 80
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "vclib"

    const-string v1, "Registered the same listener twice!"

    .line 1101
    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-boolean v0, p0, Lhie;->e:Z

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lhif;

    invoke-direct {v0, p0, p1}, Lhif;-><init>(Lhie;Lhbn;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 99
    :cond_1
    return-void
.end method

.method public a(Llyi;Lhbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAddRequest;",
            "Lhbp",
            "<TAddResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lhie;->g:Lhhn;

    new-instance v1, Lhig;

    invoke-direct {v1, p0, p2}, Lhig;-><init>(Lhie;Lhbp;)V

    invoke-interface {v0, p1, v1}, Lhhn;->a(Llyi;Lhbp;)V

    .line 122
    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TResource;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lhie;->c:Ljava/util/Map;

    return-object v0
.end method

.method public b(Lhbn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhbn",
            "<TResource;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {}, Lhbs;->a()V

    .line 104
    iget-object v0, p0, Lhie;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public b(Llyi;Lhbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModifyRequest;",
            "Lhbp",
            "<TModifyResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lhie;->g:Lhhn;

    new-instance v1, Lhih;

    invoke-direct {v1, p0, p2}, Lhih;-><init>(Lhie;Lhbp;)V

    invoke-interface {v0, p1, v1}, Lhhn;->b(Llyi;Lhbp;)V

    .line 140
    return-void
.end method

.method public c(Llyi;Lhbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRemoveRequest;",
            "Lhbp",
            "<TRemoveResponse;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lhie;->g:Lhhn;

    new-instance v1, Lhii;

    invoke-direct {v1, p0, p1, p2}, Lhii;-><init>(Lhie;Llyi;Lhbp;)V

    invoke-interface {v0, p1, v1}, Lhhn;->c(Llyi;Lhbp;)V

    .line 158
    return-void
.end method
