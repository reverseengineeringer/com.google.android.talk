.class final Leta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lesz;


# direct methods
.method constructor <init>(Lesz;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Leta;->a:Lesz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Leta;->a:Lesz;

    .line 1026
    iget-object v0, v0, Lesz;->a:Leqp;

    .line 40
    new-array v1, v4, [I

    const/16 v2, 0xcc

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Leqp;->a([I)V

    .line 41
    const-string v0, "Babel_telephony"

    const-string v1, "TeleProxyNumberHelper, request timed out."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Leta;->a:Lesz;

    .line 2026
    invoke-virtual {v0, v4}, Lesz;->a(Z)V

    .line 43
    return-void
.end method
