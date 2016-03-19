.class final Lalg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lale;

    .line 274
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :pswitch_0
    iget-object v1, v0, Lale;->b:Lawa;

    invoke-virtual {v1}, Lawa;->a()V

    .line 1155
    iget-boolean v1, v0, Lale;->j:Z

    if-eqz v1, :cond_0

    .line 1156
    iget-object v1, v0, Lale;->f:Lalr;

    invoke-interface {v1}, Lalr;->e()V

    .line 1157
    invoke-virtual {v0, v5}, Lale;->a(Z)V

    .line 287
    :goto_0
    return v6

    .line 1159
    :cond_0
    iget-object v1, v0, Lale;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1161
    :cond_1
    iget-boolean v1, v0, Lale;->h:Z

    if-eqz v1, :cond_2

    .line 1162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_2
    iget-object v1, v0, Lale;->f:Lalr;

    iget-boolean v2, v0, Lale;->e:Z

    .line 1265
    new-instance v3, Lalk;

    invoke-direct {v3, v1, v2}, Lalk;-><init>(Lalr;Z)V

    .line 1164
    iput-object v3, v0, Lale;->i:Lalk;

    .line 1165
    iput-boolean v6, v0, Lale;->h:Z

    .line 1169
    iget-object v1, v0, Lale;->i:Lalk;

    invoke-virtual {v1}, Lalk;->f()V

    .line 1170
    iget-object v1, v0, Lale;->c:Lalh;

    iget-object v2, v0, Lale;->d:Laiw;

    iget-object v3, v0, Lale;->i:Lalk;

    invoke-virtual {v1, v2, v3}, Lalh;->a(Laiw;Lalk;)V

    .line 1172
    iget-object v1, v0, Lale;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laul;

    .line 1173
    invoke-virtual {v0, v1}, Lale;->c(Laul;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1174
    iget-object v3, v0, Lale;->i:Lalk;

    invoke-virtual {v3}, Lalk;->f()V

    .line 1175
    iget-object v3, v0, Lale;->i:Lalk;

    iget-object v4, v0, Lale;->g:Lair;

    invoke-interface {v1, v3, v4}, Laul;->a(Lalr;Lair;)V

    goto :goto_1

    .line 1179
    :cond_4
    iget-object v1, v0, Lale;->i:Lalk;

    invoke-virtual {v1}, Lalk;->g()V

    .line 1181
    invoke-virtual {v0, v5}, Lale;->a(Z)V

    goto :goto_0

    .line 2023
    :pswitch_1
    invoke-virtual {v0}, Lale;->a()V

    goto :goto_0

    .line 3185
    :pswitch_2
    iget-object v1, v0, Lale;->b:Lawa;

    invoke-virtual {v1}, Lawa;->a()V

    .line 3186
    iget-boolean v1, v0, Lale;->j:Z

    if-nez v1, :cond_5

    .line 3187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3189
    :cond_5
    iget-object v1, v0, Lale;->c:Lalh;

    iget-object v2, v0, Lale;->d:Laiw;

    invoke-virtual {v1, v0, v2}, Lalh;->a(Lale;Laiw;)V

    .line 3190
    invoke-virtual {v0, v5}, Lale;->a(Z)V

    goto/16 :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
