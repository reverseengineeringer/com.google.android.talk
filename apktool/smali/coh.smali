.class final Lcoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoa;


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "https://support.google.com/hangouts/topic/6049282"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcoh;->a:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 75
    const-string v5, "hangouts"

    sget-object v6, Lcoh;->a:Landroid/net/Uri;

    .line 1080
    invoke-static {}, Laal;->w()V

    .line 1082
    const/4 v1, 0x0

    .line 1083
    const-class v0, Lhpu;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v4

    .line 1085
    const-class v0, Lcny;

    invoke-static {p0, v0}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcny;

    .line 1086
    invoke-interface {v0, p0, v4}, Lcny;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const/4 v0, 0x1

    .line 1092
    :goto_0
    if-eqz v0, :cond_1

    .line 1093
    const-class v0, Lhty;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lhty;

    .line 1094
    new-instance v0, Lcoi;

    const-class v1, Lcoa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcoi;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;ILjava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v0}, Lhty;->a(Lhtu;)V

    .line 1116
    :goto_1
    return-void

    .line 1117
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v5, v6, v0}, Lcoh;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;[Lcnx;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Landroid/net/Uri;[Lcnx;)V
    .locals 7

    .prologue
    .line 123
    const-class v0, Lgzu;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzu;

    .line 124
    invoke-interface {v0, p1}, Lgzu;->a(Ljava/lang/String;)Lgzt;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p2}, Lgzt;->a(Landroid/net/Uri;)Lgzt;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p0}, Lgzt;->a(Landroid/app/Activity;)Lgzt;

    move-result-object v2

    .line 128
    invoke-static {p0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v1

    .line 131
    sget v0, Laal;->mr:I

    .line 132
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "babel_privacy_policy_url"

    const-string v6, "https://www.google.com/policies/privacy/"

    .line 134
    invoke-interface {v1, v5, v6}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    invoke-virtual {v2, v0, v3}, Lgzt;->a(Ljava/lang/String;Landroid/content/Intent;)Lgzt;

    .line 137
    sget v0, Laal;->mo:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/android/apps/hangouts/help/impl/OpenSourceLicensesActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {v2, v0, v3}, Lgzt;->a(Ljava/lang/String;Landroid/content/Intent;)Lgzt;

    .line 141
    const-string v0, "KR"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Laal;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget v0, Laal;->mp:I

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "babel_location_tos_url"

    const-string v6, "https://www.google.co.kr/intl/ko/policies/terms/location"

    .line 145
    invoke-interface {v1, v5, v6}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    invoke-virtual {v2, v0, v3}, Lgzt;->a(Ljava/lang/String;Landroid/content/Intent;)Lgzt;

    .line 149
    :cond_0
    const-string v0, "babel_maps_tos_url"

    const-string v3, "https://www.google.com/intl/en/help/terms_maps.html"

    invoke-interface {v1, v0, v3}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    const-string v3, "/en/"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    sget v3, Laal;->mq:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    invoke-virtual {v2, v3, v4}, Lgzt;->a(Ljava/lang/String;Landroid/content/Intent;)Lgzt;

    .line 157
    sget v0, Laal;->ms:I

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "babel_tos_url"

    const-string v6, "https://www.google.com/accounts/tos"

    .line 160
    invoke-interface {v1, v5, v6}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 157
    invoke-virtual {v2, v0, v3}, Lgzt;->a(Ljava/lang/String;Landroid/content/Intent;)Lgzt;

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    const-class v0, Lcnz;

    invoke-static {p0, v0}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnz;

    .line 164
    invoke-interface {v0, p0, v1}, Lcnz;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {v2, v1}, Lgzt;->a(Landroid/os/Bundle;)Lgzt;

    .line 167
    const-class v0, Lhba;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    const-class v1, Lhpu;

    .line 168
    invoke-static {p0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v1

    .line 170
    if-eqz p3, :cond_3

    .line 171
    array-length v3, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p3, v0

    .line 173
    iget-object v5, v4, Lcnx;->a:Ljava/lang/String;

    iget-object v6, v4, Lcnx;->b:Ljava/lang/String;

    iget-object v4, v4, Lcnx;->c:[B

    invoke-virtual {v2, v5, v6, v4}, Lgzt;->a(Ljava/lang/String;Ljava/lang/String;[B)Lgzt;

    .line 175
    const/16 v4, 0xb16

    invoke-interface {v1, v4}, Lhaw;->a(I)Lhax;

    move-result-object v4

    .line 176
    invoke-interface {v4}, Lhax;->d()V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_3
    new-instance v0, Lgzx;

    invoke-direct {v0}, Lgzx;-><init>()V

    .line 180
    invoke-virtual {v0}, Lgzx;->a()Lgzx;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laen;->iI:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lgzx;->a(I)Lgzx;

    move-result-object v0

    .line 179
    invoke-virtual {v2, v0}, Lgzt;->a(Lgzx;)Lgzt;

    .line 184
    const-class v0, Lhpu;

    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 185
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lhpu;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    invoke-interface {v0}, Lhpu;->c()Lhqb;

    move-result-object v0

    const-string v3, "account_name"

    invoke-interface {v0, v3}, Lhqb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgzt;->a(Landroid/accounts/Account;)Lgzt;

    .line 198
    :cond_4
    invoke-virtual {v2, p0}, Lgzt;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 199
    const-class v0, Lgzw;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzw;

    invoke-interface {v0, p0}, Lgzw;->a(Landroid/app/Activity;)Lgzv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgzv;->a(Landroid/content/Intent;)V

    .line 200
    const/16 v0, 0x43a

    invoke-interface {v1, v0}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 201
    return-void
.end method
