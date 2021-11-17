import React from "react";

export default function FeatureBox({
  title,
  children,
  icon,
}: {
  title: String;
  children: string;
  icon: React.ReactChild;
}) {
  return (
    <div className="w-full sm:w-1/2 lg:w-1/3 sm:px-6 mb-12">
      <div className="w-12 h-12 text-blue-700 mb-2">{icon}</div>
      <h4 className="text-lg font-medium mb-1 text-cool-grey-900">{title}</h4>
      <p className="leading-snug text-cool-grey-700">{children}</p>
    </div>
  );
}
