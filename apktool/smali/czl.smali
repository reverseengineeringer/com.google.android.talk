.class public final Lczl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjq;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lczl;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljug;Landroid/os/Bundle;)Ljug;
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1074
    sget-object v0, Ldvp;->a:Ldml;

    invoke-virtual {v0, v4}, Ldml;->b(I)Z

    move-result v5

    .line 1075
    sget-object v0, Ldvp;->a:Ldml;

    invoke-virtual {v0}, Ldml;->d()Ljava/lang/Boolean;

    move-result-object v0

    .line 1076
    sget-object v3, Ldvp;->a:Ldml;

    invoke-virtual {v3, v4}, Ldml;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 1077
    const-string v6, "%s experiment enabled? %s, (def=%s srv=%s)"

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "648d1162"

    aput-object v8, v7, v1

    .line 1078
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v0, v7, v10

    aput-object v3, v7, v11

    .line 1077
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1087
    sget-object v0, Ldvp;->b:Ldml;

    invoke-virtual {v0, v4}, Ldml;->b(I)Z

    move-result v6

    .line 1088
    sget-object v0, Ldvp;->b:Ldml;

    invoke-virtual {v0}, Ldml;->d()Ljava/lang/Boolean;

    move-result-object v0

    .line 1089
    sget-object v3, Ldvp;->b:Ldml;

    invoke-virtual {v3, v4}, Ldml;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 1090
    const-string v7, "%s experiment enabled? %s, (def=%s srv=%s)"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "4ad97016"

    aput-object v9, v8, v1

    .line 1091
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v0, v8, v10

    aput-object v3, v8, v11

    .line 1090
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1038
    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v0, v2

    .line 1039
    :goto_0
    const-string v7, "Babel"

    const-string v8, "P2P is %s, experiment=%b, googler experiment: %b, "

    new-array v9, v11, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1042
    const-string v3, "enabled"

    :goto_1
    aput-object v3, v9, v1

    .line 1043
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v2

    .line 1044
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v10

    .line 1039
    invoke-static {v7, v8, v9}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    if-eqz v0, :cond_3

    .line 2050
    iget-object v0, p0, Lczl;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lczi;->a(Landroid/content/Context;I)Z

    move-result v0

    .line 1031
    if-nez v0, :cond_3

    .line 26
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljug;->a:Ljava/lang/Boolean;

    .line 27
    return-object p1

    :cond_1
    move v0, v1

    .line 1038
    goto :goto_0

    .line 1042
    :cond_2
    const-string v3, "disabled"

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1031
    goto :goto_2
.end method
