.class public final Lfhw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lfhy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final b:La;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La;"
        }
    .end annotation
.end field

.field private final c:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Laal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laal;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lfhx;Lfib;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lfia;",
            ">(",
            "Ljava/lang/String;",
            "Lfhx",
            "<TC;TO;>;",
            "Lfib",
            "<TC;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Laal;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lfhw;->e:Ljava/lang/String;

    iput-object p2, p0, Lfhw;->a:Lfhx;

    iput-object v1, p0, Lfhw;->b:La;

    iput-object p3, p0, Lfhw;->c:Lfib;

    iput-object v1, p0, Lfhw;->d:Laal;

    return-void
.end method


# virtual methods
.method public a()Lfhx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfhx",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lfhw;->a:Lfhx;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lfhw;->a:Lfhx;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()La;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La;"
        }
    .end annotation

    iget-object v0, p0, Lfhw;->b:La;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lfhw;->b:La;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lfib;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfib",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lfhw;->c:Lfib;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey"

    invoke-static {v0, v1}, Laal;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lfhw;->c:Lfib;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lfhw;->d:Laal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfhw;->e:Ljava/lang/String;

    return-object v0
.end method
