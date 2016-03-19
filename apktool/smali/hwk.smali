.class final Lhwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;
.implements Limk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 160
    const-class v0, Lhwj;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 150
    const-class v0, Lhwj;

    new-instance v1, Lhwj;

    invoke-direct {v1, p2}, Lhwj;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 151
    return-void
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 155
    const-class v0, Lhwj;

    new-instance v1, Lhwj;

    invoke-direct {v1, p2}, Lhwj;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 156
    return-void
.end method
