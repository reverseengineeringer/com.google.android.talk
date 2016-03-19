.class public Ldpy;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldpg;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/util/List;Ljava/util/List;ZZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ldpg;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3021
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 3022
    iput-wide p1, p0, Ldpy;->a:J

    .line 3023
    iput-object p3, p0, Ldpy;->b:Ljava/util/List;

    .line 4081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4083
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 4085
    new-instance v4, Lkfs;

    invoke-direct {v4}, Lkfs;-><init>()V

    .line 4086
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v1

    iput-object v1, v4, Lkfs;->a:Ljxw;

    .line 4088
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v4, Lkfs;->b:Ljava/lang/Long;

    .line 4090
    invoke-static {v4}, Lkfs;->a(Llyi;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3024
    :cond_0
    iput-object v2, p0, Ldpy;->d:Ljava/util/List;

    .line 3025
    iput-boolean p5, p0, Ldpy;->j:Z

    .line 3026
    iput-boolean p6, p0, Ldpy;->c:Z

    .line 3027
    iput-object p7, p0, Ldpy;->l:Ljava/lang/String;

    .line 3028
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3036
    new-instance v4, Lkfj;

    invoke-direct {v4}, Lkfj;-><init>()V

    .line 4327
    sget-boolean v0, Lexo;->b:Z

    .line 3037
    if-eqz v0, :cond_0

    .line 3038
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "sane_build_proto"

    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v1

    const-string v3, "id="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3039
    :goto_0
    invoke-virtual {v1, v0}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "retry="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3040
    invoke-virtual {v0, v1}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 3041
    invoke-virtual {v0}, Lexr;->b()V

    .line 3044
    :cond_0
    iget-object v0, p0, Ldpy;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3045
    iget-object v0, p0, Ldpy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lkbr;

    iput-object v0, v4, Lkfj;->b:[Lkbr;

    .line 3047
    iget-object v0, p0, Ldpy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldpg;

    .line 3048
    iget-object v6, v4, Lkfj;->b:[Lkbr;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Ldpg;->a()Lkbr;

    move-result-object v0

    aput-object v0, v6, v1

    move v1, v3

    .line 3049
    goto :goto_1

    .line 3038
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3051
    :cond_2
    const-string v0, "Babel_RequestWriter"

    const-string v1, "SyncAllNewEventsRequest.buildProtobuf: null localState"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3053
    :cond_3
    iget-object v0, p0, Ldpy;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3054
    iget-object v0, p0, Ldpy;->d:Ljava/util/List;

    .line 3055
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lkfs;

    iput-object v0, v4, Lkfj;->c:[Lkfs;

    .line 3056
    :goto_2
    iget-object v0, p0, Ldpy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 3057
    iget-object v0, p0, Ldpy;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3059
    :try_start_0
    iget-object v1, v4, Lkfj;->c:[Lkfs;

    new-instance v3, Lkfs;

    invoke-direct {v3}, Lkfs;-><init>()V

    .line 5131
    array-length v5, v0

    invoke-static {v3, v0, v5}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3059
    check-cast v0, Lkfs;

    aput-object v0, v1, v2
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 3056
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3065
    :cond_4
    const-string v0, "Babel_RequestWriter"

    const-string v1, "SyncAllNewEventsRequest.buildProtobuf: null rawUnreadConversationStates"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6036
    :cond_5
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3069
    const-string v1, "babel_smaxbytesperws"

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lkfj;->d:Ljava/lang/Integer;

    .line 3072
    iget-object v0, p0, Ldpy;->h:Lfak;

    invoke-static {p1, p2, p3, v0}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v4, Lkfj;->requestHeader:Lkdo;

    .line 3074
    iget-wide v0, p0, Ldpy;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lkfj;->a:Ljava/lang/Long;

    .line 3075
    iget-boolean v0, p0, Ldpy;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lkfj;->e:Ljava/lang/Boolean;

    .line 3076
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 5

    .prologue
    .line 3115
    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    .line 3116
    invoke-virtual {p2}, Ldvn;->c()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 8205
    :goto_0
    sget-boolean v2, Ldoo;->e:Z

    .line 3118
    if-eqz v2, :cond_0

    .line 3119
    const-string v2, "SyncAllNewEvents.onFailed "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8327
    :cond_0
    :goto_1
    sget-boolean v2, Lexo;->b:Z

    .line 3121
    if-eqz v2, :cond_1

    .line 3122
    new-instance v2, Lexr;

    invoke-direct {v2}, Lexr;-><init>()V

    const-string v3, "sane_expired"

    invoke-virtual {v2, v3}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v2

    .line 3123
    invoke-virtual {v2, v1}, Lexr;->d(Ljava/lang/String;)Lexr;

    move-result-object v1

    iget-boolean v2, p0, Ldpy;->k:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isReplaced="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3124
    invoke-virtual {v1, v2}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "expired="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3125
    invoke-virtual {v1, v0}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 3126
    invoke-virtual {v0}, Lexr;->b()V

    .line 3129
    :cond_1
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Lebo;->b(I)Lebo;

    move-result-object v0

    .line 3130
    iget-object v1, p0, Ldpy;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lebo;->d(Ljava/lang/String;)Z

    .line 3131
    return-void

    .line 3116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3119
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcwi;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3136
    check-cast p1, Ldpy;

    .line 3138
    iget-boolean v0, p1, Ldpy;->j:Z

    if-nez v0, :cond_0

    .line 3139
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldpy;->j:Z

    .line 3141
    :cond_0
    iput-boolean v2, p1, Ldpy;->k:Z

    .line 3142
    return v2
.end method

.method public b()J
    .locals 4

    .prologue
    .line 3103
    iget-boolean v0, p0, Ldpy;->j:Z

    if-eqz v0, :cond_0

    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3105
    const-string v1, "babel_sane_refresh_timeout"

    const-wide/32 v2, 0x15f90

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3109
    :goto_0
    return-wide v0

    .line 8036
    :cond_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 3109
    const-string v1, "babel_sane_timeout"

    sget-wide v2, Leea;->e:J

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3098
    const-string v0, "conversations/syncallnewevents"

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 3146
    iget-boolean v0, p0, Ldpy;->j:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3150
    iget-object v0, p0, Ldpy;->l:Ljava/lang/String;

    return-object v0
.end method
