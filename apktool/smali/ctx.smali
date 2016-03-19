.class final Lctx;
.super Lebh;
.source "SourceFile"


# instance fields
.field a:Ldrb;

.field final synthetic b:Lctt;

.field private c:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lctt;Landroid/os/ConditionVariable;)V
    .locals 1

    .prologue
    .line 1126
    iput-object p1, p0, Lctx;->b:Lctt;

    .line 2080
    iget-object v0, p1, Lctt;->d:Landroid/content/Context;

    .line 1127
    invoke-direct {p0, v0}, Lebh;-><init>(Landroid/content/Context;)V

    .line 1128
    iput-object p2, p0, Lctx;->c:Landroid/os/ConditionVariable;

    .line 1129
    return-void
.end method


# virtual methods
.method protected a(Leau;)V
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p1}, Leau;->c()Ldqf;

    move-result-object v0

    check-cast v0, Ldrb;

    iput-object v0, p0, Lctx;->a:Ldrb;

    .line 1151
    iget-object v0, p0, Lctx;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1152
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lctx;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1157
    return-void
.end method

.method a(Ljava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ldtt;->a(Ljava/lang/String;Ljava/lang/String;)Ldtt;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1137
    :cond_0
    new-instance v0, Lcty;

    invoke-direct {v0, p0, p2, v1}, Lcty;-><init>(Lctx;ILjava/util/ArrayList;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 1146
    return-void
.end method
