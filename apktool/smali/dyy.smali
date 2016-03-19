.class public final Ldyy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leff;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Ldza;

.field private e:Z

.field private f:J

.field private g:Ldyz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldyy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldyy;->b:Ljava/util/List;

    .line 60
    sget-object v0, Ldza;->a:Ldza;

    iput-object v0, p0, Ldyy;->d:Ldza;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Ldyy;->c:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldyy;->f:J

    .line 63
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    return v0
.end method

.method private a(JLdza;I)V
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 128
    sget-object v0, Ldza;->e:Ldza;

    if-eq p3, v0, :cond_0

    sget-object v0, Ldza;->c:Ldza;

    if-eq p3, v0, :cond_0

    sget-object v0, Ldza;->d:Ldza;

    if-ne p3, v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 1134
    :goto_0
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 131
    sget-boolean v0, Ldyy;->a:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldyy;->d:Ldza;

    .line 135
    invoke-virtual {v3}, Ldza;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Ldyy;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x9d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "setNotificationTrigger eventTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentTimeMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNotifTriggerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsFromLivePush: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    iget-object v0, p0, Ldyy;->d:Ldza;

    invoke-virtual {v0}, Ldza;->ordinal()I

    move-result v0

    invoke-virtual {p3}, Ldza;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1547
    sget-object v0, Ldvp;->Q:Ldml;

    invoke-virtual {v0, p4}, Ldml;->b(I)Z

    move-result v0

    .line 140
    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Ldyy;->d:Ldza;

    sget-object v1, Ldza;->a:Ldza;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Ldyy;->e:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    div-long v2, p1, v8

    sub-long v2, v0, v2

    .line 2036
    sget-object v4, Laal;->oJ:Landroid/content/Context;

    .line 148
    const-string v5, "babel_pushislate"

    const-wide/32 v6, 0xea60

    invoke-static {v4, v5, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 152
    sget-boolean v2, Ldyy;->a:Z

    if-eqz v2, :cond_2

    .line 153
    div-long v2, p1, v8

    sub-long v2, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x47

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "push is late by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, so setting trigger to deferred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_2
    sget-object p3, Ldza;->b:Ldza;

    .line 157
    mul-long/2addr v0, v8

    iput-wide v0, p0, Ldyy;->f:J

    .line 161
    :cond_3
    iput-object p3, p0, Ldyy;->d:Ldza;

    .line 163
    :cond_4
    return-void

    .line 128
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 2207
    const-wide/16 v0, -0x1

    sget-object v2, Ldza;->c:Ldza;

    invoke-direct {p0, v0, v1, v2, p1}, Ldyy;->a(JLdza;I)V

    .line 195
    return-void
.end method

.method public a(JI)V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Ldza;->e:Ldza;

    invoke-direct {p0, p1, p2, v0, p3}, Ldyy;->a(JLdza;I)V

    .line 176
    return-void
.end method

.method public a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbfz;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Ldyy;->g:Ldyz;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Ldyy;->g:Ldyz;

    invoke-virtual {v0, p1, p2, p3, p4}, Ldyz;->a(Landroid/content/Context;Lbfz;Ljava/lang/String;Ljava/util/List;)Z

    .line 98
    :cond_0
    return-void
.end method

.method public a(Lbfd;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ldyz;

    invoke-direct {v0, p1}, Ldyz;-><init>(Lbfd;)V

    iput-object v0, p0, Ldyy;->g:Ldyz;

    .line 74
    return-void
.end method

.method public a(Leff;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ldyy;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldyy;->e:Z

    .line 78
    return-void
.end method

.method public b(JI)V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Ldza;->d:Ldza;

    invoke-direct {p0, p1, p2, v0, p3}, Ldyy;->a(JLdza;I)V

    .line 188
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Leff;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Ldyy;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Ldyy;->f:J

    return-wide v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldyy;->g:Ldyz;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldyy;->g:Ldyz;

    invoke-virtual {v0}, Ldyz;->a()V

    .line 104
    :cond_0
    return-void
.end method

.method public f()Ldza;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Ldyy;->d:Ldza;

    return-object v0
.end method
