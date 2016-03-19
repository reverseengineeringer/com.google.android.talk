.class final Lbpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbky;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 6945
    iput-object p1, p0, Lbpn;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lilh;)Lbky;
    .locals 1

    .prologue
    .line 6952
    const-class v0, Lbky;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 6953
    return-object p0
.end method
