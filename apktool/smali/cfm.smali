.class final Lcfm;
.super Lhcv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcfc;


# direct methods
.method constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcfm;->a:Lcfc;

    invoke-direct {p0}, Lhcv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhil;Latn;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1100
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 2095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1100
    if-nez v0, :cond_1

    .line 1101
    invoke-super {p0, p1, p2}, Lhcv;->a(Lhil;Latn;)V

    .line 1158
    :cond_0
    return-void

    .line 1107
    :cond_1
    instance-of v0, p2, Lhin;

    if-eqz v0, :cond_5

    .line 1112
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1113
    iget-object v0, p0, Lcfm;->a:Lcfc;

    iget-object v0, v0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    move-object v1, p1

    .line 1114
    check-cast v1, Lhip;

    invoke-virtual {v0, v1}, Lhku;->a(Lhip;)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1148
    :goto_1
    iget-object v1, p0, Lcfm;->a:Lcfc;

    .line 9095
    iget-object v1, v1, Lcfc;->q:Lcgw;

    .line 1148
    invoke-virtual {v1}, Lcgw;->H()I

    move-result v1

    .line 1149
    if-eqz v0, :cond_a

    if-ne v1, v2, :cond_a

    .line 1150
    iget-object v0, p0, Lcfm;->a:Lcfc;

    iget-object v0, v0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1151
    invoke-virtual {v0}, Lhku;->c()V

    goto :goto_2

    .line 1116
    :cond_3
    invoke-virtual {p1}, Lhil;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1119
    const-string v0, "Babel_calls"

    const-string v1, "Starting outgoing ringtone without media"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 3095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1120
    invoke-virtual {v0}, Lcgw;->I()V

    move v0, v3

    goto :goto_1

    .line 1121
    :cond_4
    invoke-virtual {p1}, Lhil;->f()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1123
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 4095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1123
    invoke-virtual {v0, p1}, Lcgw;->a(Lhil;)V

    move v0, v2

    goto :goto_1

    .line 1125
    :cond_5
    instance-of v0, p2, Lhik;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1126
    invoke-virtual {p1}, Lhil;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1128
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 5095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1128
    invoke-virtual {v0, p1}, Lcgw;->a(Lhil;)V

    move v0, v2

    goto :goto_1

    .line 1129
    :cond_6
    invoke-virtual {p1}, Lhil;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1132
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 6095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1132
    invoke-virtual {v0, p1}, Lcgw;->b(Lhil;)V

    move v0, v3

    goto :goto_1

    .line 1133
    :cond_7
    invoke-virtual {p1}, Lhil;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1137
    const-string v0, "Babel_calls"

    const-string v1, "Starting outgoing ringtone after media established."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    iget-object v0, p0, Lcfm;->a:Lcfc;

    .line 7095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1138
    invoke-virtual {v0}, Lcgw;->I()V

    move v0, v3

    goto/16 :goto_1

    .line 1140
    :cond_8
    instance-of v0, p2, Lhio;

    if-eqz v0, :cond_b

    .line 1141
    check-cast p2, Lhio;

    .line 1142
    invoke-virtual {p1}, Lhil;->f()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 1143
    :goto_3
    iget-object v1, p0, Lcfm;->a:Lcfc;

    .line 8095
    iget-object v1, v1, Lcfc;->q:Lcgw;

    .line 1143
    invoke-virtual {p2}, Lhio;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcgw;->a(Lhil;Ljava/lang/Integer;)V

    move v5, v0

    move v0, v3

    move v3, v5

    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 1142
    goto :goto_3

    .line 1153
    :cond_a
    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 1154
    iget-object v0, p0, Lcfm;->a:Lcfc;

    iget-object v0, v0, Lcfc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhku;

    .line 1155
    invoke-virtual {v0}, Lhku;->h()V

    goto :goto_4

    :cond_b
    move v0, v3

    goto/16 :goto_1
.end method
