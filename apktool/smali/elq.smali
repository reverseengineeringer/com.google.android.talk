.class final Lelq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijg;


# instance fields
.field final synthetic a:Lelp;


# direct methods
.method constructor <init>(Lelp;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lelq;->a:Lelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lijc;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 94
    check-cast p2, Ljava/lang/Boolean;

    .line 1015
    const/4 v0, 0x0

    invoke-static {p2, v0}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 94
    invoke-static {v0}, Ldvd;->a(Z)V

    .line 96
    iget-object v0, p0, Lelq;->a:Lelp;

    .line 1051
    invoke-virtual {v0}, Lelp;->b()V

    .line 97
    const/4 v0, 0x1

    return v0
.end method
