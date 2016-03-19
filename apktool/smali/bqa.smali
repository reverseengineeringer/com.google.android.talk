.class final Lbqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lbpz;


# direct methods
.method constructor <init>(Lbpz;Ljava/util/Collection;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lbqa;->d:Lbpz;

    iput-object p2, p0, Lbqa;->a:Ljava/util/Collection;

    iput-object p3, p0, Lbqa;->b:Ljava/lang/String;

    iput p4, p0, Lbqa;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lbqa;->d:Lbpz;

    .line 1065
    iget-object v0, v0, Lbpz;->e:Lezj;

    .line 180
    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lbqa;->d:Lbpz;

    .line 2065
    iget-object v0, v0, Lbpz;->e:Lezj;

    .line 181
    const-string v1, "bg started"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lbqa;->d:Lbpz;

    iget-object v1, p0, Lbqa;->a:Ljava/util/Collection;

    iget-object v2, p0, Lbqa;->b:Ljava/lang/String;

    iget v3, p0, Lbqa;->c:I

    .line 3065
    invoke-virtual {v0, v1, v2, v3}, Lbpz;->a(Ljava/util/Collection;Ljava/lang/String;I)V

    .line 185
    return-void
.end method
