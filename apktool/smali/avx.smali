.class final Lavx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lic",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lavw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavw",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lavz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lavz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lic;Lavw;Lavz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TT;>;",
            "Lavw",
            "<TT;>;",
            "Lavz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lavx;->c:Lic;

    .line 139
    iput-object p2, p0, Lavx;->a:Lavw;

    .line 140
    iput-object p3, p0, Lavx;->b:Lavz;

    .line 141
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lavx;->c:Lic;

    invoke-interface {v0}, Lic;->a()Ljava/lang/Object;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 147
    iget-object v0, p0, Lavx;->a:Lavw;

    invoke-interface {v0}, Lavw;->a()Ljava/lang/Object;

    move-result-object v1

    .line 148
    const-string v0, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Created new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    instance-of v0, v1, Lavy;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 153
    check-cast v0, Lavy;

    invoke-interface {v0}, Lavy;->i_()Lawa;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lawa;->a(Z)V

    .line 155
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 160
    instance-of v0, p1, Lavy;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 161
    check-cast v0, Lavy;

    invoke-interface {v0}, Lavy;->i_()Lawa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawa;->a(Z)V

    .line 163
    :cond_0
    iget-object v0, p0, Lavx;->b:Lavz;

    invoke-interface {v0, p1}, Lavz;->a(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lavx;->c:Lic;

    invoke-interface {v0, p1}, Lic;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
