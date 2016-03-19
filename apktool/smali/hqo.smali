.class public final Lhqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpu;
.implements Lhqg;
.implements Lilu;
.implements Lioo;
.implements Lioq;
.implements Liov;
.implements Liow;
.implements Liox;
.implements Lioz;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhpw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lhpz;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lhqo;->b:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhqo;->c:Ljava/util/List;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqo;->d:Z

    .line 53
    iput-object p1, p0, Lhqo;->a:Landroid/app/Activity;

    .line 54
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Liog;Lhpz;Lhpy;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lhqo;->b:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhqo;->c:Ljava/util/List;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqo;->d:Z

    .line 65
    invoke-static {p4}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lhqo;->a:Landroid/app/Activity;

    .line 67
    iput-object p3, p0, Lhqo;->e:Lhpz;

    .line 68
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    .line 69
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 179
    iget v0, p0, Lhqo;->b:I

    if-ne v0, v4, :cond_3

    .line 180
    iget-boolean v0, p0, Lhqo;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 185
    :goto_0
    if-nez v0, :cond_1

    .line 186
    const-string v0, "IntentAccountHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget v0, p0, Lhqo;->b:I

    iget-object v1, p0, Lhqo;->a:Landroid/app/Activity;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid account state with accountId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    iput v4, p0, Lhqo;->b:I

    .line 1201
    iget-object v0, p0, Lhqo;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 194
    :cond_1
    return-void

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lhqo;->e:Lhpz;

    iget v1, p0, Lhqo;->b:I

    invoke-interface {v0, v1}, Lhpz;->c(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqo;->f:Z

    .line 115
    invoke-direct {p0}, Lhqo;->g()V

    .line 116
    return-void
.end method

.method public Y_()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lhqo;->f:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lhqo;->g()V

    .line 128
    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Laal;->w()V

    .line 139
    iget v0, p0, Lhqo;->b:I

    return v0
.end method

.method public a(Lhpw;)Lhpu;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lhqo;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public a(Lilh;)Lhqo;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lhpu;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 59
    return-object p0
.end method

.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lhqo;->e:Lhpz;

    if-nez v0, :cond_0

    .line 89
    const-class v0, Lhpz;

    invoke-virtual {p2, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lhqo;->e:Lhpz;

    .line 91
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 95
    if-nez p1, :cond_1

    .line 96
    iget-object v0, p0, Lhqo;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "account_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhqo;->b:I

    .line 97
    invoke-direct {p0}, Lhqo;->g()V

    .line 1168
    iget-object v0, p0, Lhqo;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpw;

    .line 1169
    sget-object v2, Lhpv;->a:Lhpv;

    iget v3, p0, Lhqo;->b:I

    if-eq v3, v4, :cond_0

    .line 1171
    sget-object v3, Lhpv;->c:Lhpv;

    :goto_1
    iget v5, p0, Lhqo;->b:I

    .line 1169
    invoke-interface/range {v0 .. v5}, Lhpw;->a(ZLhpv;Lhpv;II)V

    goto :goto_0

    .line 1171
    :cond_0
    sget-object v3, Lhpv;->b:Lhpv;

    goto :goto_1

    .line 100
    :cond_1
    const-string v0, "state_account_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhqo;->b:I

    .line 102
    :cond_2
    iput-boolean v1, p0, Lhqo;->f:Z

    .line 103
    iget-object v0, p0, Lhqo;->e:Lhpz;

    invoke-interface {v0, p0}, Lhpz;->a(Lhqg;)V

    .line 104
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqo;->f:Z

    .line 133
    const-string v0, "state_account_id"

    iget v1, p0, Lhqo;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Laal;->w()V

    .line 145
    iget v0, p0, Lhqo;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lhqb;
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Laal;->w()V

    .line 158
    iget-object v0, p0, Lhqo;->e:Lhpz;

    iget v1, p0, Lhqo;->b:I

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    return-object v0
.end method

.method public e()Lhqo;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqo;->d:Z

    .line 78
    return-object p0
.end method

.method public h_()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lhqo;->e:Lhpz;

    invoke-interface {v0, p0}, Lhpz;->b(Lhqg;)V

    .line 121
    return-void
.end method

.method public s_()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqo;->f:Z

    .line 109
    invoke-direct {p0}, Lhqo;->g()V

    .line 110
    return-void
.end method
