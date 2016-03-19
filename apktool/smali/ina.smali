.class public final Lina;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldir;


# direct methods
.method public constructor <init>(Ldir;)V
    .locals 0

    .prologue
    .line 2320
    iput-object p1, p0, Lina;->a:Ldir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1323
    const-string v0, "Babel_Crash"

    const-string v1, "Handle platform bug crash. Matcher: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    iget-object v0, p0, Lina;->a:Ldir;

    .line 2036
    invoke-virtual {v0, p1, p2, v4, v3}, Ldir;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZZ)V

    .line 1327
    return-void
.end method
