.class public Ldvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpx;
.implements Liaw;


# static fields
.field static final a:Z

.field static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ldvg;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/lang/Boolean;

.field public static d:Ldvi;

.field static e:Ldvf;

.field private static final f:[Ljava/lang/String;

.field private static g:Ljava/lang/Boolean;

.field private static i:Ldvh;

.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lhqb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    sget-object v0, Lezi;->o:Limx;

    sput-boolean v2, Ldvd;->a:Z

    .line 72
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Init"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Pending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Ready"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Err_net"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Err_gcm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Err_svr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Err_auth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Err_profile"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Err_oobe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Err_transient"

    aput-object v2, v0, v1

    sput-object v0, Ldvd;->f:[Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    sput-object v3, Ldvd;->g:Ljava/lang/Boolean;

    .line 95
    sput-object v3, Ldvd;->c:Ljava/lang/Boolean;

    .line 273
    new-instance v0, Ldvh;

    invoke-direct {v0}, Ldvh;-><init>()V

    sput-object v0, Ldvd;->i:Ldvh;

    .line 353
    new-instance v0, Ldvi;

    invoke-direct {v0}, Ldvi;-><init>()V

    sput-object v0, Ldvd;->d:Ldvi;

    .line 408
    new-instance v0, Ldvf;

    invoke-direct {v0}, Ldvf;-><init>()V

    sput-object v0, Ldvd;->e:Ldvf;

    .line 1751
    new-instance v0, Ldve;

    invoke-direct {v0}, Ldve;-><init>()V

    sput-object v0, Ldvd;->j:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ldvd;->h:Landroid/content/Context;

    .line 105
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbfd;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1062
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1063
    const-class v1, Leot;

    invoke-static {p0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leot;

    .line 1064
    invoke-interface {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 34043
    invoke-static {v2, v8}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 1066
    invoke-interface {v0, v5}, Lhpz;->a(I)Lhqb;

    move-result-object v2

    .line 1067
    const-string v6, "effective_gaia_id"

    invoke-interface {v2, v6}, Lhqb;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1071
    const-string v6, "account_name"

    invoke-interface {v2, v6}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v2, v3}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v6

    .line 1073
    if-nez v6, :cond_2

    .line 1074
    const-string v5, "Babel"

    const-string v6, "Account has not been setup yet. Skip:"

    .line 1075
    invoke-static {v2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-array v6, v8, [Ljava/lang/Object;

    .line 1074
    invoke-static {v5, v2, v6}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1075
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1078
    :cond_2
    invoke-virtual {v6}, Ldvg;->h()Lbfd;

    move-result-object v2

    .line 1080
    invoke-interface {v1, v5}, Leot;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v6}, Ldvg;->s()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v2

    .line 1084
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method public static a(Lbfd;)Lbfd;
    .locals 3

    .prologue
    .line 14036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 675
    const-class v1, Lawo;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 15036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 676
    const-class v2, Leot;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leot;

    .line 677
    if-eqz p0, :cond_1

    .line 678
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v2

    .line 679
    invoke-interface {v0, v2}, Lawo;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-interface {v1, v2}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-object p0

    .line 15660
    :cond_1
    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 687
    if-eqz v0, :cond_2

    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object p0

    .line 688
    :goto_1
    if-nez p0, :cond_0

    .line 692
    invoke-static {}, Ldvd;->k()Lbfd;

    move-result-object p0

    goto :goto_0

    .line 687
    :cond_2
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static a(Lczb;)Lbfd;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 855
    invoke-static {}, Ldvd;->a()V

    .line 27599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    .line 859
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 860
    invoke-virtual {v0}, Ldvg;->h()Lbfd;

    move-result-object v3

    .line 862
    invoke-virtual {v3}, Lbfd;->d()Z

    move-result v5

    .line 863
    invoke-virtual {v3}, Lbfd;->e()Z

    move-result v6

    .line 864
    if-eqz v6, :cond_2

    .line 865
    invoke-virtual {v3}, Lbfd;->b()Lczb;

    move-result-object v1

    invoke-virtual {v1, p0}, Lczb;->a(Lczb;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 866
    :goto_0
    const-string v7, "Babel"

    invoke-virtual {v0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x34

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Account "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", valid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", matches participantId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    if-nez v1, :cond_1

    .line 869
    if-eqz v6, :cond_3

    .line 870
    const-string v0, "Babel"

    invoke-virtual {v3}, Lbfd;->b()Lczb;

    move-result-object v6

    invoke-virtual {v6}, Lczb;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 871
    invoke-virtual {p0}, Lczb;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2c

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "account.getParticipantId(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", participantId:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    .line 870
    invoke-static {v0, v6, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    move-object v0, v3

    .line 881
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 865
    goto/16 :goto_0

    .line 873
    :cond_3
    const-string v6, "Babel"

    invoke-virtual {v0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x25

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Account "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "does not have a participantId"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 881
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lbfd;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 890
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-object v0

    .line 897
    :cond_1
    invoke-static {p0, p1}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v1

    .line 898
    if-eqz v1, :cond_0

    .line 899
    invoke-virtual {v1}, Ldvg;->h()Lbfd;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1726
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1727
    const/4 v0, 0x0

    .line 1729
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a()V
    .locals 4

    .prologue
    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 108
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 109
    sget-object v1, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2043
    const/4 v3, 0x0

    invoke-static {v1, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 112
    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method public static a(Lbfd;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 1122
    const-string v1, "Babel"

    const-string v2, "Account self info failed "

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    invoke-virtual {v0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, p1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    return-void

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lbfd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1182
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 1183
    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-virtual {v0, p1}, Ldvg;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lbfd;ZZZLjava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 435
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-static {v1}, Ldvd;->i(I)Ldvg;

    move-result-object v1

    .line 437
    if-nez v1, :cond_2

    .line 438
    const-string v1, "Babel"

    const-string v2, "Unable to update voice info for account "

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9769
    :cond_0
    :goto_1
    return-void

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9036
    :cond_2
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 9736
    sget-boolean v0, Lbff;->a:Z

    if-eqz v0, :cond_3

    .line 9737
    const-string v0, "updateAccountVoiceInfo before: "

    invoke-virtual {p0}, Lbfd;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9739
    :cond_3
    :goto_2
    const-class v0, Ldty;

    invoke-static {v2, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldty;

    .line 9741
    invoke-interface {v0, v2, p0}, Ldty;->b(Landroid/content/Context;Lbfd;)Z

    move-result v3

    .line 9743
    const-class v1, Lhpz;

    invoke-static {v2, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    invoke-virtual {p0}, Lbfd;->g()I

    move-result v4

    invoke-interface {v1, v4}, Lhpz;->b(I)Lhqc;

    move-result-object v1

    .line 9745
    const-string v4, "is_gv_calling_available"

    invoke-virtual {v1, v4, p1}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 9746
    const-string v4, "gv_should_show_voice_tos"

    invoke-virtual {v1, v4, p2}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 9747
    const-string v4, "gv_emergency_dialing_supported"

    invoke-virtual {v1, v4, p3}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 9748
    const-string v4, "gv_account_balance"

    invoke-virtual {v1, v4, p4}, Lhqc;->b(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    .line 9749
    const-string v4, "gv_use_tycho_branding"

    invoke-virtual {v1, v4, p5}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    .line 9750
    invoke-virtual {v1}, Lhqc;->d()I

    .line 9753
    invoke-interface {v0, v2, p0}, Ldty;->b(Landroid/content/Context;Lbfd;)Z

    move-result v0

    .line 9754
    const-string v1, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "previousIncomingPhoneCallsWanted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " newIncomingPhoneCallsWanted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9760
    if-eq v3, v0, :cond_4

    .line 9761
    const-string v1, "Babel"

    const-string v2, "Re-register account to update the incoming calls preference for account "

    .line 9764
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    .line 9761
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9765
    invoke-static {p0}, Ldvd;->c(Lbfd;)V

    .line 9768
    :cond_4
    sget-boolean v0, Lbff;->a:Z

    if-eqz v0, :cond_0

    .line 9769
    const-string v0, "updateAccountVoiceInfo after: "

    invoke-virtual {p0}, Lbfd;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 9737
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9764
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 9769
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static a(Lhpz;I)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-interface {p0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v3

    .line 185
    const-string v0, "is_managed_account"

    invoke-interface {v3, v0}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    return-void

    .line 191
    :cond_1
    const-string v0, "plus_page_gaia_ids"

    invoke-interface {v3, v0}, Lhqb;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "plus_page_gaia_ids"

    invoke-interface {v3, v0}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 194
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {p0}, Lhpz;->a()Ljava/util/List;

    move-result-object v0

    .line 196
    const-string v5, "account_name"

    invoke-interface {v3, v5}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5043
    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 199
    invoke-interface {p0, v3}, Lhpz;->a(I)Lhqb;

    move-result-object v7

    .line 200
    const-string v3, "account_name"

    invoke-interface {v7, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "is_plus_page"

    .line 201
    invoke-interface {v7, v3}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    array-length v8, v1

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_8

    aget-object v9, v1, v3

    .line 204
    const-string v10, "effective_gaia_id"

    invoke-interface {v7, v10}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 205
    const/4 v3, 0x1

    .line 209
    :goto_3
    if-nez v3, :cond_2

    .line 210
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 203
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 214
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    const-string v4, "Babel"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Removing old +Page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6043
    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 216
    invoke-interface {p0, v0}, Lhpz;->f(I)V

    goto :goto_4

    .line 220
    :cond_6
    array-length v3, v1

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    .line 221
    invoke-static {v5, v2}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v2

    .line 222
    if-eqz v2, :cond_7

    .line 6350
    invoke-virtual {v2}, Ldvg;->r()V

    .line 220
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    move v3, v2

    goto :goto_3
.end method

.method public static a(Ljava/io/PrintWriter;)V
    .locals 9

    .prologue
    .line 1310
    const-string v0, "Account list:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    const-string v0, "Name,ID,jid,state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Ldvd;->a()V

    .line 39599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    .line 40036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1316
    const-class v1, Lawm;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    .line 1317
    sget-object v1, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldvg;

    .line 1318
    invoke-virtual {v1}, Ldvg;->h()Lbfd;

    move-result-object v4

    .line 1319
    if-nez v4, :cond_1

    .line 1320
    const-string v2, "?, ?, ?, "

    invoke-virtual {v1}, Ldvg;->i()I

    move-result v1

    invoke-static {v1}, Ldvd;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1323
    :cond_1
    invoke-virtual {v4}, Lbfd;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1324
    invoke-virtual {v4}, Lbfd;->b()Lczb;

    move-result-object v2

    invoke-virtual {v2}, Lczb;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1327
    :goto_2
    invoke-virtual {v4}, Lbfd;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1331
    invoke-virtual {v4}, Lbfd;->g()I

    move-result v4

    invoke-interface {v0, v4}, Lawm;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1333
    invoke-virtual {v1}, Ldvg;->i()I

    move-result v1

    invoke-static {v1}, Ldvd;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :cond_2
    const-string v2, "no-participant-id"

    goto :goto_2

    .line 1336
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1337
    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1133
    const-string v0, "Babel"

    const-string v1, "onAccountSetSelfInfoBitFailed: "

    invoke-static {v0, v1, p0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1135
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 667
    invoke-static {p0}, Ldvi;->a(Z)V

    .line 668
    return-void
.end method

.method static a(Lhqb;)Z
    .locals 2

    .prologue
    .line 1785
    const-string v0, "account_name"

    invoke-interface {p0, v0}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1775
    const-class v0, Lhpz;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1776
    sget-object v2, Ldvd;->j:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Lhpz;->a(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1777
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1780
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 7036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 411
    const-string v1, "babel_ac_registration_renew_days"

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ldvg;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1266
    invoke-static {}, Ldvd;->a()V

    .line 1267
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 1268
    invoke-virtual {v0}, Ldvg;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1269
    invoke-virtual {v0}, Ldvg;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1288
    :goto_0
    return-object v0

    .line 36198
    :cond_1
    const-string v0, "Expected non-null"

    invoke-static {v0, p0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35366
    if-eqz p1, :cond_8

    .line 37057
    invoke-static {p0, v2}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v0

    .line 35374
    if-nez v0, :cond_2

    .line 35375
    const-string v0, "Babel"

    const-string v1, "No owner account for plus page"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 1277
    :goto_1
    if-nez v1, :cond_5

    move-object v0, v2

    .line 1278
    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 38036
    :goto_2
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 35379
    const-class v4, Lhpz;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 35380
    invoke-interface {v0, p0, p1}, Lhpz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 35384
    if-eqz p1, :cond_4

    .line 35385
    invoke-interface {v0, p0, p1}, Lhpz;->a(Ljava/lang/String;Ljava/lang/String;)Lhqc;

    move-result-object v0

    invoke-virtual {v0}, Lhqc;->d()I

    .line 35390
    :cond_3
    new-instance v0, Ldvg;

    .line 39036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 35391
    invoke-static {v4, p0, p1}, Lbff;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Ldvg;-><init>(Lbfd;Ldvg;)V

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 35387
    goto :goto_1

    .line 1280
    :cond_5
    const-string v0, "Babel"

    invoke-virtual {v1}, Ldvg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "created account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    sget-boolean v0, Ldvd;->a:Z

    if-eqz v0, :cond_7

    .line 1284
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_3
    if-ge v0, v4, :cond_7

    aget-object v3, v2, v0

    .line 1285
    const-string v5, "    "

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1284
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1285
    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 39247
    :cond_7
    invoke-virtual {v1}, Ldvg;->h()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 39248
    sget-object v2, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39249
    invoke-static {v0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public static b(Lbfd;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 23036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 805
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 806
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    .line 807
    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v3

    .line 808
    if-nez v3, :cond_0

    .line 24036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 809
    invoke-static {v4, v1}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 24134
    :goto_0
    const-string v4, "Expected condition to be true"

    invoke-static {v4, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 24660
    invoke-static {}, Ldvi;->a()Z

    move-result v1

    .line 25134
    const-string v4, "Expected condition to be true"

    invoke-static {v4, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 816
    invoke-static {v3}, Ldvd;->b(Z)V

    .line 818
    const-string v1, "Babel"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    const-string v3, "Babel"

    const-string v4, "setCarrierSmsAccount: "

    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    :cond_1
    invoke-static {}, Ldvd;->n()Lbfd;

    move-result-object v2

    .line 823
    if-ne p0, v2, :cond_4

    .line 846
    :goto_2
    return-void

    :cond_2
    move v1, v2

    .line 809
    goto :goto_0

    .line 819
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 828
    :cond_4
    const/4 v1, 0x0

    .line 829
    if-eqz v2, :cond_7

    .line 830
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v3

    .line 26036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 831
    invoke-static {v4, v3}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 832
    invoke-interface {v0, v3}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    move-object v0, v2

    .line 841
    :goto_3
    if-eqz v0, :cond_6

    .line 842
    invoke-static {v0}, Leny;->a(Lbfd;)V

    .line 27036
    :cond_6
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 844
    invoke-static {v0, p0}, Lbff;->e(Landroid/content/Context;Lbfd;)V

    .line 845
    invoke-static {p0}, Leny;->c(Lbfd;)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method static b(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 782
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Laen;->a(Z)V

    .line 798
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 788
    goto :goto_0

    .line 792
    :cond_1
    invoke-static {}, Ldvd;->y()Lbfd;

    move-result-object v0

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v3

    .line 22036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 793
    const-class v4, Lhpz;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 794
    invoke-interface {v0, v3}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    const-string v3, "logged_in"

    .line 795
    invoke-virtual {v0, v3, p0}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    const-string v3, "logged_out"

    if-nez p0, :cond_2

    .line 796
    :goto_2
    invoke-virtual {v0, v3, v1}, Lhqc;->b(Ljava/lang/String;Z)Lhqc;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Lhqc;->d()I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 795
    goto :goto_2
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 8036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 417
    const-string v1, "babel_ac_setting_renew_minutes"

    const-wide/16 v2, 0x5a0

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Lbfd;)V
    .locals 2

    .prologue
    .line 1168
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v0

    invoke-static {v0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_0

    .line 1170
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldvg;->a(Z)V

    .line 1172
    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 4

    .prologue
    .line 976
    invoke-static {}, Ldwt;->a()Ldwt;

    move-result-object v0

    invoke-virtual {v0}, Ldwt;->j()V

    .line 30036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 980
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 981
    invoke-interface {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v0

    .line 982
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30043
    const/4 v2, 0x0

    invoke-static {v0, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 983
    invoke-static {v0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 986
    invoke-virtual {v0}, Ldvg;->i()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_1

    .line 987
    invoke-virtual {v0}, Ldvg;->i()I

    move-result v2

    const/16 v3, 0x6c

    if-eq v2, v3, :cond_1

    .line 988
    invoke-virtual {v0}, Ldvg;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    :cond_1
    if-eqz p0, :cond_2

    .line 990
    invoke-virtual {v0}, Ldvg;->p()V

    .line 30350
    :cond_2
    invoke-virtual {v0}, Ldvg;->r()V

    .line 994
    invoke-virtual {v0}, Ldvg;->t()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31350
    invoke-virtual {v0}, Ldvg;->q()V

    goto :goto_0

    .line 1000
    :cond_3
    return-void
.end method

.method public static d(Lbfd;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1190
    if-eqz p0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lbfd;->g()I

    move-result v1

    invoke-static {v1}, Ldvd;->i(I)Ldvg;

    move-result-object v1

    .line 1192
    if-nez v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return v0

    .line 1196
    :cond_1
    invoke-virtual {v1}, Ldvg;->s()Z

    move-result v0

    goto :goto_0
.end method

.method public static d()[I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method static d(I)[I
    .locals 18

    .prologue
    .line 486
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v13, v1

    .line 487
    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v12, v1

    .line 489
    :goto_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v11, v1

    .line 491
    :goto_2
    and-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_7

    const/4 v1, 0x1

    move v4, v1

    .line 492
    :goto_3
    const/4 v8, 0x0

    .line 494
    const/4 v7, 0x0

    .line 495
    const/4 v6, -0x1

    .line 496
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 498
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move v10, v1

    .line 499
    :goto_4
    move/from16 v0, p0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move v5, v1

    .line 10036
    :goto_5
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 504
    const-class v2, Lhpz;

    invoke-static {v1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    .line 11036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 505
    const-class v3, Lawo;

    invoke-static {v2, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lawo;

    .line 12036
    sget-object v3, Laal;->oJ:Landroid/content/Context;

    .line 506
    const-class v9, Leot;

    invoke-static {v3, v9}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leot;

    .line 507
    invoke-interface {v1}, Lhpz;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 12043
    const/4 v9, 0x0

    invoke-static {v1, v9}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 509
    invoke-static {v1}, Ldvd;->i(I)Ldvg;

    move-result-object v9

    .line 511
    if-eqz v9, :cond_0

    .line 518
    if-eqz v12, :cond_1

    invoke-virtual {v9}, Ldvg;->m()Z

    move-result v16

    if-nez v16, :cond_0

    .line 521
    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v9}, Ldvg;->s()Z

    move-result v16

    if-nez v16, :cond_0

    .line 524
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v9}, Ldvg;->l()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 527
    :cond_3
    const-string v16, "SMS"

    invoke-virtual {v9}, Ldvg;->e()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 528
    invoke-virtual {v9}, Ldvg;->g()I

    move-result v1

    move v6, v1

    .line 529
    goto :goto_6

    .line 486
    :cond_4
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_0

    .line 487
    :cond_5
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_1

    .line 489
    :cond_6
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_2

    .line 491
    :cond_7
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_3

    .line 498
    :cond_8
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_4

    .line 499
    :cond_9
    const/4 v1, 0x0

    move v5, v1

    goto :goto_5

    .line 531
    :cond_a
    invoke-virtual {v9}, Ldvg;->b()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual {v9}, Ldvg;->h()Lbfd;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbfd;->y()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 532
    :cond_b
    if-nez v5, :cond_0

    .line 535
    if-eqz v11, :cond_c

    invoke-virtual {v9}, Ldvg;->h()Lbfd;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lbfd;->c()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 539
    :cond_c
    if-eqz v10, :cond_d

    invoke-interface {v2, v1}, Lawo;->d(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 544
    :cond_d
    invoke-virtual {v9}, Ldvg;->l()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 545
    add-int/lit8 v9, v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 546
    invoke-interface {v3, v1}, Leot;->b(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 547
    const/4 v1, 0x1

    move v7, v1

    move v8, v9

    goto/16 :goto_6

    .line 549
    :cond_e
    if-nez v13, :cond_f

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    move v1, v8

    :goto_7
    move v8, v1

    .line 552
    goto/16 :goto_6

    .line 556
    :cond_10
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    .line 557
    :goto_8
    if-nez v1, :cond_11

    if-nez v7, :cond_11

    .line 12660
    invoke-static {}, Ldvi;->a()Z

    move-result v2

    .line 557
    if-eqz v2, :cond_11

    .line 558
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 560
    :cond_11
    :goto_9
    if-eqz v1, :cond_12

    .line 564
    const/4 v1, -0x1

    if-eq v6, v1, :cond_12

    .line 565
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_12
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [I

    .line 569
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    array-length v1, v3

    if-ge v2, v1, :cond_15

    .line 570
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-static {v1, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    aput v1, v3, v2

    .line 569
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_a

    .line 556
    :cond_13
    const/4 v1, 0x0

    goto :goto_8

    .line 558
    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    .line 572
    :cond_15
    return-object v3

    :cond_16
    move v1, v9

    goto :goto_7
.end method

.method public static d(Z)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1703
    if-eqz p0, :cond_0

    .line 42590
    const/4 v0, 0x5

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    .line 1708
    :goto_0
    return-object v0

    .line 43581
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public static e(I)Lbfd;
    .locals 1

    .prologue
    .line 921
    invoke-static {p0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Ldvg;->h()Lbfd;

    move-result-object v0

    .line 925
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lbfd;)Ldvm;
    .locals 2

    .prologue
    .line 1226
    invoke-virtual {p0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v0

    .line 1227
    if-nez v0, :cond_0

    .line 1228
    const/4 v0, 0x0

    .line 1231
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ldvg;->c()Ldvm;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()[I
    .locals 1

    .prologue
    .line 599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static f(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 935
    invoke-static {p0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_0

    .line 937
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldvg;->a(Z)V

    .line 939
    :cond_0
    return-void
.end method

.method public static f()[I
    .locals 1

    .prologue
    .line 609
    const/16 v0, 0xc

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static g(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    invoke-static {p0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 1209
    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-virtual {v0}, Ldvg;->n()V

    goto :goto_0
.end method

.method public static g()[I
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x4

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static h(I)Z
    .locals 1

    .prologue
    .line 1298
    invoke-static {p0}, Ldvd;->i(I)Ldvg;

    move-result-object v0

    .line 1299
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldvg;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()[I
    .locals 1

    .prologue
    .line 640
    const/16 v0, 0x20

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method private static i(I)Ldvg;
    .locals 3

    .prologue
    .line 1239
    invoke-static {}, Ldvd;->a()V

    .line 35036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1243
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1244
    invoke-interface {v0, p0}, Lhpz;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1245
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "BAM#gBA: invalid account id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const/4 v1, 0x0

    .line 1261
    :cond_0
    :goto_0
    return-object v1

    .line 1251
    :cond_1
    sget-object v1, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldvg;

    .line 1252
    if-nez v1, :cond_0

    .line 1258
    invoke-interface {v0, p0}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 1259
    const-string v1, "account_name"

    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    const-string v2, "effective_gaia_id"

    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-static {v1, v0}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v1

    goto :goto_0
.end method

.method public static i()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 13036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 647
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1303
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6d

    if-gt p0, v0, :cond_0

    .line 1304
    sget-object v0, Ldvd;->f:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x64

    aget-object v0, v0, v1

    .line 1306
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    sget-object v0, Ldvd;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 654
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ldvd;->g:Ljava/lang/Boolean;

    .line 656
    :cond_0
    sget-object v0, Ldvd;->g:Ljava/lang/Boolean;

    .line 14015
    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 656
    return v0
.end method

.method public static k()Lbfd;
    .locals 3

    .prologue
    .line 700
    invoke-static {}, Ldvd;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfd;

    .line 701
    invoke-virtual {v0}, Lbfd;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Lbfd;
    .locals 3

    .prologue
    .line 16660
    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 717
    if-nez v0, :cond_0

    .line 718
    const/4 v0, 0x0

    .line 727
    :goto_0
    return-object v0

    .line 722
    :cond_0
    invoke-static {}, Ldvd;->m()Lbfd;

    move-result-object v1

    .line 17036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 723
    const-class v2, Leot;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    .line 724
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v2

    invoke-interface {v0, v2}, Leot;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    invoke-static {v1}, Ldvd;->b(Lbfd;)V

    :cond_1
    move-object v0, v1

    .line 727
    goto :goto_0
.end method

.method public static m()Lbfd;
    .locals 3

    .prologue
    .line 743
    invoke-static {}, Lezm;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    const/4 v0, 0x0

    .line 758
    :cond_0
    :goto_0
    return-object v0

    .line 747
    :cond_1
    invoke-static {}, Ldvd;->n()Lbfd;

    move-result-object v0

    .line 750
    if-nez v0, :cond_2

    .line 18036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 753
    invoke-static {v0}, Ldvd;->a(Landroid/content/Context;)Lbfd;

    move-result-object v0

    .line 755
    :cond_2
    if-eqz v0, :cond_3

    .line 19036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 755
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v2

    invoke-static {v1, v2}, Lbff;->f(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    :cond_3
    invoke-static {}, Ldvd;->y()Lbfd;

    move-result-object v0

    goto :goto_0
.end method

.method static n()Lbfd;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 766
    const-class v3, Lhpz;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 767
    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "is_sms_account"

    aput-object v4, v3, v2

    invoke-interface {v0, v3}, Lhpz;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 769
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Laen;->b(Z)V

    .line 770
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 771
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 773
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 769
    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static o()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 946
    invoke-static {}, Ldvd;->a()V

    .line 28599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    .line 949
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 950
    invoke-virtual {v0}, Ldvg;->i()I

    move-result v1

    const/16 v3, 0x65

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Ldvg;->s()Z

    move-result v1

    if-nez v1, :cond_2

    .line 951
    const-string v3, "Babel"

    const-string v4, "Registering account for "

    invoke-virtual {v0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    invoke-virtual {v0, v6}, Ldvg;->a(Z)V

    goto :goto_0

    .line 951
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 953
    :cond_2
    invoke-virtual {v0}, Ldvg;->i()I

    move-result v1

    const/16 v3, 0x66

    if-ne v1, v3, :cond_0

    .line 956
    const-string v1, "Babel"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 957
    const-string v3, "Babel"

    const-string v1, "Renewing account registration after babel upgrade. Account: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 958
    invoke-virtual {v0}, Ldvg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-array v4, v6, [Ljava/lang/Object;

    .line 957
    invoke-static {v3, v1, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 961
    :cond_3
    invoke-virtual {v0}, Ldvg;->o()V

    .line 29350
    invoke-virtual {v0}, Ldvg;->q()V

    goto :goto_0

    .line 958
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 965
    :cond_5
    return-void
.end method

.method public static p()V
    .locals 3

    .prologue
    .line 1007
    invoke-static {}, Ldvd;->a()V

    .line 31599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    .line 1010
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 1012
    invoke-virtual {v0}, Ldvg;->s()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32350
    invoke-virtual {v0}, Ldvg;->q()V

    goto :goto_0

    .line 1016
    :cond_1
    return-void
.end method

.method public static q()V
    .locals 6

    .prologue
    .line 1035
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string v0, "Babel"

    const-string v1, "Scheduling acount renewal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33262
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 34036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 33263
    const-string v3, "babel_ac_registration_renew_window_days"

    const-wide/16 v4, 0x3

    invoke-static {v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    .line 33261
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(JJ)V

    .line 1040
    return-void
.end method

.method public static r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbfd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    invoke-static {}, Ldvd;->a()V

    .line 34599
    const/16 v0, 0x8

    invoke-static {v0}, Ldvd;->d(I)[I

    .line 1093
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1094
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 1095
    invoke-virtual {v0}, Ldvg;->s()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1096
    invoke-virtual {v0}, Ldvg;->h()Lbfd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1100
    :cond_1
    return-object v1
.end method

.method public static s()V
    .locals 3

    .prologue
    .line 1141
    invoke-static {}, Ldvd;->a()V

    .line 1142
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 1143
    invoke-virtual {v0}, Ldvg;->s()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    invoke-virtual {v0}, Ldvg;->j()V

    goto :goto_0

    .line 1147
    :cond_1
    return-void
.end method

.method public static t()V
    .locals 4

    .prologue
    .line 1153
    invoke-static {}, Ldvd;->a()V

    .line 1154
    sget-object v0, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvg;

    .line 1155
    invoke-virtual {v0}, Ldvg;->s()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ldvg;->i()I

    move-result v2

    const/16 v3, 0x66

    if-le v2, v3, :cond_0

    .line 1156
    invoke-virtual {v0}, Ldvg;->j()V

    goto :goto_0

    .line 1159
    :cond_1
    return-void
.end method

.method public static u()Z
    .locals 3

    .prologue
    .line 41036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1674
    const-string v1, "babel_allowed_for_domain_bit"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1679
    invoke-static {}, Ldvd;->a()V

    .line 42036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 1680
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 1681
    invoke-interface {v0}, Lhpz;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 42043
    invoke-static {v1, v2}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1683
    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    const-string v4, "sms_only"

    .line 1684
    invoke-interface {v1, v4}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1685
    const/4 v0, 0x1

    .line 1688
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static w()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1721
    const/16 v0, 0x20

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static x()[I
    .locals 1

    .prologue
    .line 1740
    const/16 v0, 0x15

    invoke-static {v0}, Ldvd;->d(I)[I

    move-result-object v0

    return-object v0
.end method

.method private static y()Lbfd;
    .locals 2

    .prologue
    .line 21036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 778
    const-class v1, Leot;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    invoke-interface {v0}, Leot;->a()I

    move-result v0

    .line 777
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "BAM#account updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Ldvd;->h:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 170
    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v1

    .line 171
    const-string v2, "logged_out"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3142
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "BAM, cleanup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3145
    iget-object v0, p0, Ldvd;->h:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 3148
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(I)V

    .line 3159
    const-string v1, "is_sms_account"

    invoke-interface {v0, v1}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3660
    invoke-static {}, Ldvi;->a()Z

    move-result v0

    .line 3159
    if-eqz v0, :cond_0

    .line 3160
    invoke-static {}, Ldvd;->y()Lbfd;

    move-result-object v0

    invoke-static {v0}, Ldvd;->b(Lbfd;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v2, "sms_only"

    invoke-interface {v1, v2}, Lhqb;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4269
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(I)V

    .line 176
    invoke-static {v0, p1}, Ldvd;->a(Lhpz;I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 122
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "BAM created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Ldvd;->h:Landroid/content/Context;

    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    .line 125
    const-string v1, "account_name"

    .line 126
    invoke-interface {v0, v1}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "effective_gaia_id"

    .line 127
    invoke-interface {v0, v2}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Ldvd;->b(Ljava/lang/String;Ljava/lang/String;)Ldvg;

    move-result-object v1

    .line 128
    const-string v2, "babelAccount should not be null"

    invoke-static {v2, v1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "babelAccount.getName() should not be null"

    invoke-virtual {v1}, Ldvg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Ldvd;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v0}, Lhqb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    invoke-static {p1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
