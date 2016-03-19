.class public final Ldva;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method public constructor <init>(Legx;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Legx;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldva;->a:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Legx;->b()I

    move-result v0

    iput v0, p0, Ldva;->b:I

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Ldva;->a:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Ldva;->b:I

    .line 123
    return-void
.end method


# virtual methods
.method public a(Lbfz;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x4

    .line 126
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    iget v1, p0, Ldva;->b:I

    invoke-virtual {p1, v0, v1}, Lbfz;->c(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Ldva;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lbfz;->m(Ljava/lang/String;J)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v3}, Lbfz;->l(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b(Lbfz;)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p1}, Lbfz;->a()V

    .line 143
    :try_start_0
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    iget v1, p0, Ldva;->b:I

    invoke-virtual {p1, v0, v1}, Lbfz;->c(Ljava/lang/String;I)V

    .line 1153
    iget-object v0, p0, Ldva;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lbfz;->ae(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1154
    iget v2, p0, Ldva;->b:I

    invoke-virtual {p1, v0, v2}, Lbfz;->c(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0

    .line 145
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-virtual {p1}, Lbfz;->c()V

    .line 148
    return-void
.end method
