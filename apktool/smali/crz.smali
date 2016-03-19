.class final Lcrz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgeo;


# instance fields
.field final synthetic a:Lcrx;


# direct methods
.method constructor <init>(Lcrx;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcrz;->a:Lcrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O_()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcrz;->a:Lcrx;

    iget-object v0, v0, Lcrx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcrz;->a:Lcrx;

    iget-object v0, v0, Lcrx;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcrz;->a:Lcrx;

    iget-object v0, v0, Lcrx;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcrz;->a:Lcrx;

    iget-object v0, v0, Lcrx;->b:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public synthetic f()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 119
    return-object p0
.end method
